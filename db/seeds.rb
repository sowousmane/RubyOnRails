# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Building.create([{ name: 'Batiment A', address: "63 boulevard victor hugo" }, { name: 'Batiment A', address: "1001 boulevard victor hugo" }])

Room.create([{ name: 'B200', description: "15m carré" , Building_id:2}, { name: 'A001', description: "un studio pas comme les autres",Building_id:1 }])

Item.create([{ name: 'Marmites', description:"pour ma cuisine j'en aurai besoin", piicture:"une photo", weight:2, length:3, storage_details:"dans un des meubles de la cuisine" },{ name: 'Poelle', description:"pour ma cuisine j'en aurai besoin", piicture:"une photo", weight:2, length:3, storage_details:"dans un des meubles de la cuisine" } ])

RoomItem.create([{Room_id:1, Item_id:1},{Room_id:1, Item_id:2} ])


