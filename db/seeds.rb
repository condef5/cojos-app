# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Player.destroy_all
Match.destroy_all

match = Match.create(place: 'Potokar', time: DateTime.parse('2022-02-09 21:00:00'))
Player.create([
  { full_name: 'Frank Condezo', match_id: match.id },
  { full_name: 'Angel Cerna', match_id: match.id }
])
