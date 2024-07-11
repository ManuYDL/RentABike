# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

# seed.rb
User.destroy_all
Bike.destroy_all

puts "start user"

user_1 = User.create!(name: "Alice", description: "Nice owner", email: "www.user_1@gmail.com", password: "123456")
user_2 = User.create!(name: "Roxanne", description: "The boss", email: "www.user_2@gmail.com", password: "123456")
user_3 = User.create!(name: "Qassim", description: "FrontMan", email: "www.user_3@gmail.com", password: "123456")
user_4 = User.create!(name: "Manuel", description: "BackMan", email: "www.user_4@gmail.comjhdjhdg", password: "123456")

puts "user done!"

file = URI.open("https://www.cyclable.com/img/c/1327.jpg")
bike = Bike.new(name: "S-Work", description: "S Works is the very top of the range from Specialized. For a magnificent speed ride", color: "Green", price: 11, user_id: user_4.id)
bike.photo.attach(io: file, filename: "SWorks.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://image.jimcdn.com/app/cms/image/transf/dimension=316x422:format=jpg/path/s00c01b86c176dc21/image/i2beecdd05fee8aef/version/1680005963/image.jpg")
bike = Bike.new(name: "Lapierre", description: "To beat the competition or his own records", color: "Red", price: 14, user_id: user_1.id)
bike.photo.attach(io: file, filename: "Lapierre.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://www.cyclable.com/wp-content/uploads/2017/06/gravel-bike.png")
bike = Bike.new(name: "Gravel", description: "A mountain bike is a bicycle that allows you to ride on uneven terrain.", color: "Blue", price: 12, user_id: user_2.id)
bike.photo.attach(io: file, filename: "Gravel.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://c4.wallpaperflare.com/wallpaper/93/637/306/canyon-bicycle-endurace-cf-sl-8-disc-aero-road-bike-sport-hd-wallpaper-thumb.jpg")
bike = Bike.new(name: "Canyon", description: "carbon frame, relaxed position.", color: "Yellow", price: 13, user_id: user_3.id)
bike.photo.attach(io: file, filename: "Canyon.jpg", content_type: "image/jpg")
bike.save

puts "seeds done"
