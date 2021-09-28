# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'date'

User.destroy_all
Flat.destroy_all
Booking.destroy_all
puts "Remove all data from DB"

puts "All data removed!"


# user_rm = User.create!(email: "user_rm@test.com", password: "test123", owner: false, name: "Mario", lastname: "Rossi" )
# user_mi = User.create!(email: "user_mi@test.com", password: "test123", owner: false, name: "Giuseppe", lastname: "Verdi" )
user_admin = User.create!(email: "user_admin@test.com", password: "test123", owner: true, name: "Rupert", lastname: "Sciamenna" )



Flat.create!(title: "Loft Colosseo",
             address: "Via Nicola Salvi, 65",
             image_url: "https://images.unsplash.com/photo-1605229788577-c69bf0cd3714?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjM3OTd8MHwxfHNlYXJjaHwxfHxhcGFydGFtZW50c3xlbnwwfHx8fDE2MzI4MjQyMDU&ixlib=rb-1.2.1&q=80&w=1080",
             description: "Amazing flat close to the city center of Rome!",
             city: "Rome",
             price: 200,
             size: 6,
             user_id: user_admin.id
            )
Flat.create!(title: "Attic",
             address: "Via Baccina, 32",
             image_url: "https://images.unsplash.com/photo-1456602277280-6cf1f7b3324b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjM3OTd8MHwxfHNlYXJjaHwxfHxyb21lJTIwaG91c2VzfGVufDB8fHx8MTYzMjgyNTE1MA&ixlib=rb-1.2.1&q=80&w=1080",
             description: "Wonderfult last floor apartment with historic city center view!",
             city: "Rome",
             price: 300,
             size: 3,
             user_id: user_admin.id
            )
Flat.create!(title: "Windmill Experience",
             address: "Via Claudia, 15, 00184 Roma RM",
             image_url: "https://images.unsplash.com/photo-1598902289654-6c1ba478eaa0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjM3OTd8MHwxfHNlYXJjaHw5fHxyb21lJTIwaGlzdG9yaWMlMjBhcGFydG1lbnR8ZW58MHx8fHwxNjMyODI2MDEy&ixlib=rb-1.2.1&q=80&w=1080",
             description: "Stay in an authentic Windmill of the Romanian age",
             city: "Rome",
             price: 250,
             size: 2,
             user_id: user_admin.id
            )
Flat.create!(title: "City Center Apartment",
             address: "Corso Como",
             image_url: "https://images.unsplash.com/photo-1491065941218-c54dda955694?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjM3OTd8MHwxfHNlYXJjaHwxfHxtaWxhbiUyMGFwYXJ0bWVudHxlbnwwfHx8fDE2MzI4MjU3NjU&ixlib=rb-1.2.1&q=80&w=1080",
             description: "Really Close to the city center and all the attractions",
             city: "Milan",
             price: 150,
             size: 4,
             user_id: user_admin.id
            )
Flat.create!(title: "Bosco Verticale",
             address: "Via Gaetano de Castillia, 11",
             description: "Amazing Building in the heart of the city",
             image_url: "https://images.unsplash.com/photo-1556983852-43bf21186b2a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjM3OTd8MHwxfHNlYXJjaHwzfHxtaWxhbiUyMGFwYXJ0bWVudHxlbnwwfHx8fDE2MzI4MjU3NjU&ixlib=rb-1.2.1&q=80&w=1080",
             city: "Milan",
             price: 350,
             size: 6,
             user_id: user_admin.id
            )
Flat.create!(title: "Modern and Luxury Apartment",
             address: "Via Monte Napoleone, 15",
             description: "Recently renovated building with state of the art technology",
             image_url: "https://images.unsplash.com/photo-1535007135893-61091db8c179?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNjM3OTd8MHwxfHNlYXJjaHw4fHxtaWxhbiUyMG1vZGVybiUyMGFwYXJ0bWVudHxlbnwwfHx8fDE2MzI4NDE4ODY&ixlib=rb-1.2.1&q=80&w=1080",
             city: "Milan",
             price: 450,
             size: 4,
             user_id: user_admin.id
            )

# booking_rm = Booking.create!(check_in: Date.parse("24 Set 2021").strftime('%Y-%m-%d'), check_out:Date.parse("26 Set 2021").strftime('%Y-%m-%d'), flat_id: flat_rm.id, user_id: user_rm.id)
# booking_mi = Booking.create!(check_in: Date.parse("01 Jun 2021").strftime('%Y-%m-%d'), check_out:Date.parse("03 Jun 2021").strftime('%Y-%m-%d'), flat_id: flat_mi.id, user_id: user_mi.id)



puts "Created Data. All good"
