require 'faker'

User.destroy_all
Post.destroy_all
Vote.destroy_all

10.times { User.create(username: Faker::AquaTeenHungerForce.character, password: 123) }

Post.create(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote, user_id: 1, commentable_type: "post", commentable_id: 1, voteable_type: "post", voteable_id: 1)
Post.create(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote, user_id: 2)
Post.create(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote, user_id: 3)
Post.create(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote, user_id: 4)
Post.create(title: Faker::Book.title, content: Faker::MostInterestingManInTheWorld.quote, user_id: 5)

Vote.create(up_vote: 1, down_vote: 0, user_id: 1, voteable_type: "Post", voteable_id: 1)
Vote.create(up_vote: 1, down_vote: 0, user_id: 2, voteable_type: "Post", voteable_id: 1)
Vote.create(up_vote: 1, down_vote: 0, user_id: 3, voteable_type: "Post", voteable_id: 1)
Vote.create(up_vote: 1, down_vote: 0, user_id: 3, voteable_type: "Post", voteable_id: 1)

