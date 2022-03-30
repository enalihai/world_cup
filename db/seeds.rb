# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@uefa = League.create!(name: "UEFA")
@belgium = @uefa.teams.create!(country: "Belgium", qualified: true, rank: 1)
@germany = @uefa.teams.create!(country: "Germany", qualified: true, rank: 11)
@italy = @uefa.teams.create!(country: "Italy", qualified: false, rank: 6)
@denmark = @uefa.teams.create!(country: "Denmark", qualified: true, rank: 9)
