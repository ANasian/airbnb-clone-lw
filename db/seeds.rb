# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'Date'

User.destroy_all
Flat.destroy_all
Booking.destroy_all
puts "Remove all data from DB"


puts "All data removed!"

user_rm = User.create!(email: "user_rm@test.com", password: "test123", owner: false, name: "Mario", lastname: "Rossi" )
user_mi = User.create!(email: "user_mi@test.com", password: "test123", owner: false, name: "Giuseppe", lastname: "Verdi" )

flat_rm = Flat.create!(title: "Loft Colosseo", address: "Via Nicola Salvi, 65", description: "Amazing flat close to the city center of Rome!", city: "Rome", price: 200, size: 6, user_id: user_rm.id)
flat_rm_2 = Flat.create!(title: "Attic", address: "Via Baccina, 32", description: "Wonderfult last floor apartment with historic city center view!", city: "Rome", price: 300, size: 3, user_id: user_rm.id)
flat_mi = Flat.create!(title: "Appartamento Centro Milano", address: "Corso Como", description: "Appartamentino in centro!", city: "Milan", price: 100, size: 4, user_id: user_mi.id)

booking_rm = Booking.create!(check_in: Date.parse("24 Set 2021").strftime('%Y-%m-%d'), check_out:Date.parse("26 Set 2021").strftime('%Y-%m-%d'), flat_id: flat_rm.id, user_id: user_rm.id)
booking_mi = Booking.create!(check_in: Date.parse("01 Jun 2021").strftime('%Y-%m-%d'), check_out:Date.parse("03 Jun 2021").strftime('%Y-%m-%d'), flat_id: flat_mi.id, user_id: user_mi.id)



puts "Created Data. All good"
