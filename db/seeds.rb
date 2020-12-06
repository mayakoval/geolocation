require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all

filepath = 'db/doctors_nhs_scotland.json'
serialized_data = File.read(filepath)
doctors = JSON.parse(serialized_data)

puts "Creating GP database for NHS Scotland"

# doctors.each do |doctor|
#   Doctor.new(
#     forename: doctor["forename"],
#     surname: doctor["records"["surname"]],
#     specialty: doctor["records"["GPDesignation"]],
#     address: doctor["records"["AddressLine2" "AddressLine3" "AddressLine4" "Postcode"]],
#     description: doctor["records"["GPPracticeName"]]
#   )
#   doctor.save!
# end
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
	address: "45 Pine Pl, Glasgow G5 0BQ",
	description: "Best care for all family.",
	)
doctor3.save!

doctor4 = Doctor.new(
	forename: "A",
	surname: "McKenzie",
	specialty: "GP",
	address: "201 Abercromby St, Bridgeton, Glasgow G40 2DA",
	description: "Best care for all family.",
	)
doctor4.save!

doctor5 = Doctor.new(
	forename: "Ronald",
	surname: "Wolfe",
	specialty: "Medical Genetics",
	address: "24 Govan Rd, Glasgow G51 1HS",
	description: "Find out the truth hidden in your genes.",
	)
doctor5.save!

doctor6 = Doctor.new(
	forename: "M A",
	surname: "Rashid",
	specialty: "Dentist",
	address: "12-14 Tullis St, Bridgeton, Glasgow G40 1HN",
	description: "Give yourself the best smile!",
	)
doctor6.save!

puts "New #{Doctor.count} doctors added to the database."