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
Booking.destroy_all
User.destroy_all
Bike.destroy_all

puts "start user"

user_1 = User.create!(name: "Alice", description: "Nice owner", email: "www.user_1@gmail.com", password: "123456")
user_2 = User.create!(name: "Roxanne", description: "The boss", email: "www.user_2@gmail.com", password: "123456")
user_3 = User.create!(name: "Qassim", description: "FrontMan", email: "www.user_3@gmail.com", password: "123456")
user_4 = User.create!(name: "Manuel", description: "BackMan", email: "www.user_4@gmail.comjhdjhdg", password: "123456")

puts "user done!"

file = URI.open("https://c02.purpledshub.com/uploads/sites/39/2020/03/Specialized-S-works-Venge-01-159e2a5.jpg")
bike = Bike.new(name: "S-Work", shortd: "S Works is...", description: "S Works is the very top of the range from Specialized. For a magnificent speed ride", color: "Blue", price: 100, user_id: user_4.id)
bike.photo.attach(io: file, filename: "SWorks.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://image.jimcdn.com/app/cms/image/transf/dimension=316x422:format=jpg/path/s00c01b86c176dc21/image/i2beecdd05fee8aef/version/1680005963/image.jpg")
bike = Bike.new(name: "Lapierre", shortd: "To beat the...", description: "To beat the competition or his own records", color: "Red", price: 50, user_id: user_1.id)
bike.photo.attach(io: file, filename: "Lapierre.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://www.cyclable.com/wp-content/uploads/2017/06/gravel-bike.png")
bike = Bike.new(name: "Gravel", shortd: "A moutain bike...",  description: "A mountain bike is a bicycle that allows you to ride on uneven terrain.", color: "Blue", price: 54, user_id: user_2.id)
bike.photo.attach(io: file, filename: "Gravel.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://c4.wallpaperflare.com/wallpaper/93/637/306/canyon-bicycle-endurace-cf-sl-8-disc-aero-road-bike-sport-hd-wallpaper-thumb.jpg")
bike = Bike.new(name: "Canyon", shortd: "Carbon frame...", description: "carbon frame, relaxed position.", color: "Yellow", price: 46, user_id: user_3.id)
bike.photo.attach(io: file, filename: "Canyon.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://www.commeunvelo.com/wp-content/uploads/2020/10/ludo-giant-velo-route-propel-1024x690.jpg.webp")
bike = Bike.new(name: "Giant", shortd: "The competition aero...", description: "The competition aero model: the Propel, If you're looking for speed above all else", color: "Red", price: 42, user_id: user_3.id)
bike.photo.attach(io: file, filename: "Giant.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://www.matosvelo.fr/public/Matos-pro/Specialized/2022/New_Tarmac_SL7_team/SD_Worx/406A1808.jpg")
bike = Bike.new(name: "Tarmac SL7", shortd: "Women's bike. Tarmac...", description: "Women's bike. Tarmac SL7, SRAM Red eTap AXS groupset and Zipp 303 wheels", color: "Purple", price: 35, user_id: user_3.id)
bike.photo.attach(io: file, filename: "SworkW.jpg", content_type: "image/jpg")
bike.save


file = URI.open("https://www.cyclable.com/img/c/1327.jpg")
bike = Bike.new(name: "Genesis", shortd: "Steel bike for...", description: "Steel bike for beautiful rides", color: "Green", price: 37, user_id: user_4.id)
bike.photo.attach(io: file, filename: "Genesis.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://i.imgur.com/7lme4Am.jpg")
bike = Bike.new(name: "Cube", shortd: "For maximum pleasure...", description: "For maximum pleasure in the forest", color: "Blue/Grey", price: 42, user_id: user_3.id)
bike.photo.attach(io: file, filename: "Cube.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://lecycle.fr/wp-content/uploads/2022/07/294898212_2361356697346412_2051072798184255237_n-1.jpg")
bike = Bike.new(name: "Cervelo", shortd: "The best bike...", description: "The best bike, it needs no description, Vingegaard bike", color: "Blue/Grey", price: 60, user_id: user_3.id)
bike.photo.attach(io: file, filename: "Cervelo.jpg", content_type: "image/jpg")
bike.save

file = URI.open("https://www.matosvelo.fr/public/Tests/Feminin/Liv/Envie_Advanced_1/Liv-Envie-Advanced-1-002.jpg")
bike = Bike.new(name: "Liv", shortd: "Real competition bike...", description: "Real competition bike which will be perfect for anyone looking for an efficient bike", color: "White/Black", price: 35, user_id: user_3.id)
bike.photo.attach(io: file, filename: "Liv.jpg", content_type: "image/jpg")
bike.save

puts "seeds done"
