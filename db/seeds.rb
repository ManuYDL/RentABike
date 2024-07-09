# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# seed.rb

# Create users
user_1 = User.create(name: "Alice", description: "Nice owner")
user_2 = User.create(name: "Roxanne", description: "The boss")
user_3 = User.create(name: "Qassim", description: "FrontMan")
user_4 = User.create(name: "Emily Brown", description: "BackMan")

Bike.create(color: "Red", price: 14, user_id: user_1.id)
Bike.create(color: "Blue", price: 12, user_id: user_2.id)
Bike.create(color: "Green", price: 13, user_id: user_3.id)
Bike.create(color: "Yellow", price: 11, user_id: user_4.id)
