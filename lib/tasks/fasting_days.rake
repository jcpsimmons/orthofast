desc 'Fetch fasting days and constraints'
task :fetch_fasting_days => :environment do

  require "nokogiri"
  require "open-uri"

  date =  DateTime.now.in_time_zone('Pacific Time (US & Canada)')
  url = "https://www.goarch.org/chapel/calendar?month=#{date.month}&year=#{date.year}&viewStyle=GridView&viewType=ViewReadings"
  doc = Nokogiri::HTML(URI.open(url))

  doc.css('#orthodox-cal>ul.cal-days>:not(.out_of_range)').each do |day|
    day_number = day.at_css('.date').content.strip
    full_date = DateTime.parse("#{date.year}-#{date.month}-#{day_number}")

    next if FastingDay.find_by(date: full_date)

    child_classnames = day.at_css('.day').attributes['class'].value.split(' ')
    fasting_types = ['strict-fast', 'grapes', 'fasting-fish', 'fast-day']

    search_fasting_result = fasting_types.find_index { |type| child_classnames.include?(type) }
    fasting_code = search_fasting_result ? search_fasting_result + 1 : 0

    fasting_day = FastingDay.new({date: full_date, fasting_code: fasting_code})
    fasting_day.save!
  end
end


# 1 strict-fast
# 2 grapes
# 3 fasting-fish
# 4 fast-day (cheese)
