# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Italy')
User.create(username: 'Mexico')
User.create(username: 'USA')
User.create(username: 'Japan')
User.create(username: 'Costa Rica')

Artwork.create(title: 'Mona Lisa', image_url: 'monalisa.jpg', artist_id: 1)
Artwork.create(title: 'Mario Bros', image_url: 'mario&luigi.jpg', artist_id: 1)
Artwork.create(title: 'Three Beauties of the Present Day', image_url: 'monalisa.jpg', artist_id: 4)
Artwork.create(title: 'The Two Fridas', image_url: 'monalisa.jpg', artist_id: 2)
Artwork.create(title: 'American Gothic', image_url: 'monalisa.jpg', artist_id: 3)
Artwork.create(title: 'Test', image_url: 'monalisa.jpg', artist_id: 3)
Artwork.create(title: 'Test2', image_url: 'monalisa.jpg', artist_id: 5)
Artwork.create(title: 'Mona Lisa', image_url: 'monalisa.jpg', artist_id: 1)
Artwork.create(title: 'Mona Lisa', image_url: 'monalisa.jpg', artist_id: 1)
