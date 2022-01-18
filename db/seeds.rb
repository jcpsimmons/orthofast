# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

["Nuts, seeds, and honey.", "Veggies and hummus.", "Protein shake with almond milk and compliant protein powder."].each do |text|
    Food.create(name: "Strict Fasting", description: text, fasting_code: 1)
end

["Oil, vinegar, and pita bread."].each do |text|
    Food.create(name: "Wine and Oil Allowed", description: text, fasting_code: 2)
end

["Cooked fish, vegetables, and rice.", "Canned sardines and pita bread."].each do |text|
    Food.create(name: "No Meat, Dairy or Eggs", description: text, fasting_code: 3)
end

["Cheese, nuts, and honey.", "Grilled cheese sandwich.", "Protein shake with milk and whey protein."].each do |text|
    Food.create(name: "Dairy Allowed", description: text, fasting_code: 4)
end
