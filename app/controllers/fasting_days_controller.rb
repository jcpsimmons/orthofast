class FastingDaysController < ApplicationController
  def index
    @today = DateTime.now.in_time_zone('Pacific Time (US & Canada)')
    @fasting_days = FastingDay.where(date: @today.beginning_of_month..@today.end_of_month)
  end

  def show
  end
end
