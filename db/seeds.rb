# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
User.create(email: "gba@gba.com", password: "gba", password_confirmation: "gba")

Todo.create(title: "Eggs", detail: "Big chicken eggs", quantity: 12)
Todo.create(title: "Meat", detail: "Beef Rib Eye", quantity: 2)
Todo.create(title: "Veggies", detail: "Carots", quantity: 6)
