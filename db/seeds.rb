# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Car.destroy_all
User.destroy_all

Car.create!(brand: "Renault", model: "Megane", price: "50", car_picture: "renault.jpeg")
Car.create!(brand: "Peugeot", model: "407", price: "60", car_picture: "peugeot.jpeg")
Car.create!(brand: "Fiat", model: "Punto", price: "70", car_picture: "fiat.jpeg")
Car.create!(brand: "Ferrari", model: "Testarossa", price: "250", car_picture: "ferrari.jpeg")

User.create!(
  first_name: 'Marcel',
  last_name: 'Patulacci',
  email: 'marcel.patulacci@gmail.com',
  password: 'azerty'
)