# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Artwork.destroy_all
User.destroy_all

user1 = User.create(username: 'Italy')
user2 = User.create(username: 'Mexico')
user3 = User.create(username: 'USA')
user4 = User.create(username: 'Japan')
user5 = User.create(username: 'Costa Rica')

artwork1 = Artwork.create(title: 'Mona Lisa', image_url: 'monalisa.jpg', artist_id: user1.id)
artwork2 = Artwork.create(title: 'Mario Bros', image_url: 'mario&luigi.jpg', artist_id: user2.id)
artwork3 = Artwork.create(title: 'Three Beauties of the Present Day', image_url: 'threebeauties.jpg', artist_id: user3.id)
artwork4 = Artwork.create(title: 'The Two Fridas', image_url: 'twofridas.jpg', artist_id: user2.id)
artwork5 = Artwork.create(title: 'American Gothic', image_url: 'americangothic.jpg', artist_id: user4.id)

Comment.create(body: 'Sick art, bro', user_id: user1.id, artwork_id: artwork5.id)
Comment.create(body: 'Trashcan', user_id: user1.id, artwork_id: artwork4.id)
Comment.create(body: 'WOW, lit, fuego', user_id: user2.id, artwork_id: artwork1.id)
Comment.create(body: 'dank meme', user_id: user3.id, artwork_id: artwork2.id)
Comment.create(body: 'does this comment work? pls work', user_id: user4.id, artwork_id: artwork3.id)