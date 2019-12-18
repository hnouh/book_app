# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Author.create(first_name: "Osamah", last_name: "Al-muslim", birthdate: "1977", nationality:"Saudi" ,img: "http://altibrah.ae/img/authors/a33f7a3d2a328f15696.JPG")
Author.create(first_name: "Abdulwahab", last_name: "Al-refaie", birthdate: "1973", nationality:"Kuwaiti" ,img: "https://abjjadst.blob.core.windows.net/pub/34b098ee-af50-40ca-88ea-d475ddf1e0e8-250X250.png")
Author.create(first_name: "Adham", last_name: "Al-sharkawii", birthdate: "1984", nationality: "Palestinian",img: "http://www.al-watan.qa/Data/20170803/Images/30_3_1.jpg")

Book.create(author_id: 1, title: "Khawf", year: 2015)
Book.create(author_id: 2, title: "Halat Nadira", year: 2012)
Book.create(author_id: 3, title: "With prophet peace be upon him", year: 2017)