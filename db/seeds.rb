# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
powers = [
  {name:"super strength",description: "gives the wielder super human strengths"},
  {name:"flight",description: "gives the wielder the ability to fly through the skys at supersonic speed"},
  {name:"super human senses",description: "allows the person to user their senses at super human level"},
  {name:"elasticity",description: "can stretch the human body to extreme lengths"}
]

puts " ⚡ creating powers...."

powers.each {|power| Power.create(power)}

heroes = [
  {name:"Peter Parker", super_name:"Spider-Man"},
  {name:"Steve Rogers", super_name:"Captain America"},
  {name:"Bruce Banner", super_name:"Hulk"},
  {name:"Natasha Romanoff", super_name:"Black Widow"},
  {name:"Matthew Murdock", super_name:"Dare Devil"},
  {name:"Reed Richards", super_name:"Mr.Fantastic"},
  {name:"T'Challa", super_name:"Black Panther"},
  {name:"Thor Odinson", super_name:"Thor"},
  {name:"Tony Stark", super_name:"Iron Man"},
  {name:"Carol Danvers", super_name:"Captain Marvel"} 
]

puts "🦸 creating heroes...."

heroes.each { |hero| Hero.create(hero) }

HeroPower.create(strength: "Average", hero_id: 1 , power_id: 1)

puts " Done!!"