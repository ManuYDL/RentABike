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
User.destroy_all
Bike.destroy_all

# Create users
user_1 = User.create(name: "Alice", description: "Nice owner")
user_2 = User.create(name: "Roxanne", description: "The boss")
user_3 = User.create(name: "Qassim", description: "FrontMan")
user_4 = User.create(name: "Emily Brown", description: "BackMan")

Bike.create(name:"Velo de route", img:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cyclonecycles.fr%2Fvelos-assistance-electrique%2Fv%25C3%25A9lo-de-route%2F&psig=AOvVaw2j7fY4X8v80wDItI4hHzFC&ust=1720616251039000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJDVi5WBmocDFQAAAAAdAAAAABAE", color: "Red", price: 14, user_id: user_1.id)
Bike.create(name:"Vtt", img:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.summumbike.com%2Fvtt%2F437-vtt-giant-xtc-slr-291-taille-m-2022.html&psig=AOvVaw1NZCVuoZ6f8Ur7v9AXFnhZ&ust=1720616273432000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMDtraGBmocDFQAAAAAdAAAAABAE", color: "Blue", price: 12, user_id: user_2.id)
Bike.create(name: "Bmx", img:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bmxshop.fr%2Fbmx-freestyle-rock-20-yellow%2F&psig=AOvVaw3dMCEy81u0_2xAkQiaYgdN&ust=1720616291933000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOiFwK6BmocDFQAAAAAdAAAAABAE", color: "Yellow", price: 13, user_id: user_3.id)
Bike.create(name: "Gravel", img:"https://www.cyclable.com/img/c/1327.jpg", color: "Green",img:"", price: 11, user_id: user_4.id)
