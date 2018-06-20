# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

harrypotter = Franchise.create(name: "Harry Potter")
thelegendofzelda = Franchise.create(name:"Legend of Zelda")

media1 = Medium.create(name: "Harry Potter", media_type: "book", director_author: "JK Rowling", snippet: "about a boy with with a wand", review: "great", rating: 5, franchise_id: 1)
media2 = Medium.create(name: "Harry Potter soccerer's stone", media_type: "book", director_author: "JK Rowling", snippet: "about a boy with with a wand", review: "great", rating: 5, franchise_id: 1)
media3 = Medium.create(name: "Harry Potter prisoner of azkaban", media_type: "book", director_author: "JK Rowling", snippet: "about a boy with with a wand", review: "great", rating: 5, franchise_id: 1)

eric = User.create(name: "Eric", email: "eric.razor@test.com", password: "password")
angelina = User.create(name: "Angelina", email: "angelina@test.com", password: "pa55word")
# t.string "name"
# t.string "type"
# t.string "director_author"
# t.text "snippet"
# t.text "review"
# t.integer "rating"
# t.integer "franchise_id"
