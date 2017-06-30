# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dino1 = Dinosaur.create!( { name: "Iguanodon", age: 3, description: "The Iguanodon is real ugly" } )
dino2 = Dinosaur.create!( { name: "Mosasaurus", age: 10, description: "The Mosasaurus is fat and huge" } )
dino3 = Dinosaur.create!( { name: "Hungarosaurus", age: 15, description: "THe Hungarosaurus has only two legs" } )
