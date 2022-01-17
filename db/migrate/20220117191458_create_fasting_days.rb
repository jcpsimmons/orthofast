class CreateFastingDays < ActiveRecord::Migration[7.0]
  def change
    create_table :fasting_days do |t|
      t.date :date, null: false
      t.integer :fasting_code, null: false
      t.timestamps
    end
  end
end
