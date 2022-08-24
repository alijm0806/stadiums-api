# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
stadium = Stadium.new(
  name: "MetLife Stadium", city: "NJ", address: "", image: "",
)
stadium.save

stadium = Stadium.new(
  name: "Mercedes-Benz Stadium", city: "Atlanta", address: "", image: "",
)
stadium.save

stadium = Stadium.new(
  name: "NRG Stadium", city: "Houston", address: "", image: "",
)
stadium.save

stadium = Stadium.new(
  name: "Hard Rock Stadium", city: "Miami", address: "", image: "",
)
stadium.save

stadium = Stadium.new(
  name: "Lincoln Financial Field", city: "Philadelphia", address: "", image: "",
)
stadium.save
