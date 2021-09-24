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


user_rm = User.create!(email: "user_rm@test.com", password: "test123", owner: false, name: "Mario", lastname: "Rossi" )
user_mi = User.create!(email: "user_mi@test.com", password: "test123", owner: false, name: "Giuseppe", lastname: "Verdi" )
user_admin = User.create!(email: "user_admin@test.com", password: "test123", owner: true, name: "Rupert", lastname: "Sciamenna" )



flat_rm = Flat.create!(title: "Loft Colosseo", address: "Via Nicola Salvi, 65", description: "Amazing flat close to the city center of Rome!", city: "Rome", price: 200, size: 6, user_id: user_rm.id)
flat_mi = Flat.create!(title: "Appartamento Centro Milano", address: "Corso Como", description: "Appartamentino in centro!", city: "Milan", price: 100, size: 4, user_id: user_mi.id)

booking_rm = Booking.create!(check_in: Date.parse("Sat, 24 May 2021").strftime('%Y-%m-%d'), check_out:Date.parse("Sat, 26 May 2021").strftime('%Y-%m-%d'), flat_id: flat_rm.id, user_id: user_rm.id)
booking_mi = Booking.create!(check_in: Date.parse("Sat, 01 Jun 2021").strftime('%Y-%m-%d'), check_out:Date.parse("Sat, 03 Jun 2021").strftime('%Y-%m-%d'), flat_id: flat_mi.id, user_id: user_mi.id)



puts "Created Data. All good"
