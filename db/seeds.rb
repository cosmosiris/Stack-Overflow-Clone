require 'faker'

User.destroy_all
Post.destroy_all

10.times { User.create(username: Faker::AquaTeenHungerForce.character, password: 123) }

Post.create(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote, user_id: 1)
Post.create(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote, user_id: 2)
Post.create(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote, user_id: 3)
Post.create(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote, user_id: 4)
Post.create(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote, user_id: 5)
