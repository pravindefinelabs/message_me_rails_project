# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.create(body: "Hi I'am a new message", user_id: 1)
Message.create(body: "hello I'am a new message", user_id: 2)
Message.create(body: "Hi bhai log!", user_id: 2)
Message.create(body: "hey I'am happy", user_id: 3)
Message.create(body: "Hi lets meet yaro", user_id: 4)
Message.create(body: "bro how are you", user_id: 5)
