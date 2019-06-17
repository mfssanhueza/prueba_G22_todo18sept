# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  UserTodo.destroy_all
  User.destroy_all
  Todo.destroy_all

  Todo.create([
  {name: 'Comer empanada', picture: "https://picsum.photos/id/#{1000}/600"},
  {name: 'Bailar cueca', picture: "https://picsum.photos/id/#{1001}/600"},
  {name: 'Ir a una fonda', picture: "https://picsum.photos/id/#{1002}/600"},
  {name: 'Tomar terremoto', picture: "https://picsum.photos/id/#{1004}/600"},
  {name: 'Bailar cumbia', picture: "https://picsum.photos/id/#{1005}/600"},
  {name: 'Jugar al trompo', picture: "https://picsum.photos/id/#{1006}/600"},
  {name: 'Tomar chicha', picture: "https://picsum.photos/id/#{1008}/600"},
  {name: 'Jugar al palo encebado', picture: "https://picsum.photos/id/#{1011}/600"},
  {name: 'Comer anticucho', picture: "https://picsum.photos/id/#{1015}/600"},
  ])
