# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

terrarea = Restaurant.create(name: "terrarea", address:"matosinhos", phone_number:"11", category:"belgian")
santiago = Restaurant.create(name: "santiago", address:"porto", phone_number:"22", category:"chinese")
tacobell = Restaurant.create(name: "taco bell", address:"senhora da hora", phone_number:"33", category:"french")
sushiaria = Restaurant.create(name: "sushiaria", address:"leça da palmeira", phone_number:"44", category:"japanese")
saomartino = Restaurant.create(name: "são martino", address:"matosinhos", phone_number:"55", category:"italian")

rev1 = Review.create(rating:5, content:"love it!")
rev2 = Review.create(rating:1, content:"hate it!")

rev1.restaurant = terrarea
rev2.restaurant = santiago

rev1.save
rev2.save
