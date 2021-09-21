# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'Date'

array = [User.all, Flat.all, Booking.all]
puts "Remove all data from DB"

array.each do |item|
  item.destroy_all
end

puts "All data removed!"

# new_user = User.create!(email: "email@test.com", password: "test123", owner: false, name: "Mario", lastname: "Rossi" )
# new_flat = Flat.create!(title: "Loft Colosseo", address: "Via dei Fori Imperiali", description: "Amazing flat close to the city center of Rome!", city: "Rome", price: 200, size: 6, user_id: new_user.id)
# new_booking = Booking.create!(check_in: Date.parse("Sat, 24 May 2020").strftime('%Y-%m-%d'), check_out:Date.parse("Sat, 26 May 2020").strftime('%Y-%m-%d'), flat_id: new_flat.id, user_id: new_user.id)

# puts "Created Data. All good"