# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {
    first_name: 'Joe',
    last_name: 'Toe',
    email: 'joe.toe@email.com'
  },
  {
    first_name: 'Edgar',
    last_name: 'Poe',
    email: 'edgar.poe@email.com'
  },
])
