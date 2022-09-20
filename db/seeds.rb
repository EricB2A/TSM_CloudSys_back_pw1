# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([
  { firstname: 'Eric', lastname: 'Bousbaa', username: 'ericb2a'},
  { firstname: 'Teo', lastname: 'Ferrari', username: 'lordtt'},
  { firstname: 'Alexandre', lastname: 'Mottier', username: 'alex-mottier'},
  { firstname: 'Alexis', lastname: 'Alleman', username: 'alexis-allemann'},
  { firstname: 'Quentin', lastname: 'Forstier', username: 'QuentinForestier'}
])