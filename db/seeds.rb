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

puts "start user"

user_1 = User.create!(name: "Alice", description: "Nice owner", email: "www.user_1@gmail.com", password: "123456")
user_2 = User.create!(name: "Roxanne", description: "The boss", email: "www.user_2@gmail.com", password: "123456")
user_3 = User.create!(name: "Qassim", description: "FrontMan", email: "www.user_3@gmail.com", password: "123456")
user_4 = User.create!(name: "Manuel", description: "BackMan", email: "www.user_4@gmail.comjhdjhdg", password: "123456")

puts "user done!"

Bike.create!(name: "Lapierre", image: "https://image.jimcdn.com/app/cms/image/transf/dimension=316x422:format=jpg/path/s00c01b86c176dc21/image/i2beecdd05fee8aef/version/1680005963/image.jpg", description: "To beat the competition or his own records", color: "Red", price: 14, user_id: user_1.id)
Bike.create!(name: "Speedy", image: "https://www.monequipementsport.fr/media/catalog/product/cache/9fe419b18e030d545cfcd4c196a3d959/v/e/velo-ville-people-28-pouces-7-vitesses-blanc.jpg", description: "A mountain bike is a bicycle that allows you to ride on uneven terrain.", color: "Blue", price: 12, user_id: user_2.id)
Bike.create!(name: "Canyon", image: "https://c4.wallpaperflare.com/wallpaper/93/637/306/canyon-bicycle-endurace-cf-sl-8-disc-aero-road-bike-sport-hd-wallpaper-thumb.jpg", description: "carbon frame, relaxed position.", color: "Yellow", price: 13, user_id: user_3.id)
Bike.create!(name: "S-Work", image: "https://www.cyclable.com/img/c/1327.jpg", description: "S Works is the very top of the range from Specialized. For a magnificent speed ride", color: "Green", price: 11, user_id: user_4.id)

puts "seeds done"
