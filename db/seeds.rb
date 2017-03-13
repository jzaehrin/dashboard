# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'jzaehrin', email: 'jonathan.zaehringer@gmail.com', password: 'totem', password_confirmation: 'totem', is_admin: true);

Project.create(title: 'Hungry Students', short_description: 'Application de reserve au restaurant via mobile.', status: 0, deadline: '30.04.2017', tags: 'Ionic, Augular2, Ruby on Rails, Reservation, Restaurant, Etudiant', nbr_people: 3, user_id: 1);

Project.create(title: 'Raidplanner', short_description: 'Raidplanner pour un jeu specifique', status: 1, deadline: '30.06.2016', tags: 'Laravel, Jeux-video, Organisation', nbr_people: 4, user_id: 1);

Project.create(title: 'Runners', short_description: 'Gestion des transports pour Paleo', status: 0, deadline: '28.02.2017', tags: 'Ionic, Laravel, Paleo, Organisation, cours', nbr_people: 8, user_id: 1);
