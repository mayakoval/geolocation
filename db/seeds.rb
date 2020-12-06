require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all

doctor1 = Doctor.new(
	forename: "G",
	surname: "Kidd",
	specialty: "Respiratory",
	address: "7 Midlock St, Glasgow G51 1SL",
	description: "I will help with any respiratory problems.",
	)
doctor1.save!

doctor2 = Doctor.new(
	forename: "M",
	surname: "McKenzie",
	specialty: "Podiatry",
	address: "101 Salamanca St, Parkhead, Glasgow G31 5BA",
	description: "Good care of podiatry patients including diabetics.",
	)
doctor2.save!

doctor3 = Doctor.new(
	forename: "C",
	surname: "Hills",
	specialty: "GP",
	address: "Gorbals Health Centre, 45 Pine Pl, Glasgow G5 0BQ",
	description: "Best care for all family.",
	)
doctor3.save!

puts "New #{Doctor.count} doctors added to the database."