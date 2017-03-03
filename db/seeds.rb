# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'jzaehrin', email: 'jonathan.zaehringer@gmail.com', password: 'totem', password_confirmation: 'totem', is_admin: true);
User.create(username: 'mgenoud', email: 'malorie.genoud@gmail.com', password: 'totem', password_confirmation: 'totem', is_admin: true);
