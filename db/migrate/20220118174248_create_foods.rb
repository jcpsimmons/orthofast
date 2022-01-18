class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.integer :fasting_code, null: false
      t.string :name, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
