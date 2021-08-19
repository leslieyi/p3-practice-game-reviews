puts "Clearing data..."
User.destroy_all
Game.destroy_all
Category.destroy_all

puts "Creating users..."
User.create(username: Faker::Internet.username, email: Faker::Internet.email, review_id:1, game_id:1 )
User.create(username: Faker::Internet.username, email: Faker::Internet.email, review_id:2, game_id:2 )
User.create(username: Faker::Internet.username, email: Faker::Internet.email, review_id:3, game_id:3 )
User.create(username: Faker::Internet.username, email: Faker::Internet.email, review_id:4, game_id:4 )
User.create(username: Faker::Internet.username, email: Faker::Internet.email, review_id:5, game_id:5 )


puts "Creating games..."
Game.create(name: Faker::Game.title, platform: Faker::Game.platform, category_id:1, user_id:1, review_id:1)

Game.create(name: Faker::Game.title, platform: Faker::Game.platform, category_id:2, user_id:2, review_id:2)

Game.create(name: Faker::Game.title, platform: Faker::Game.platform, category_id:3, user_id:3, review_id:3)

Game.create(name: Faker::Game.title, platform: Faker::Game.platform, category_id:4, user_id:4, review_id:4)

Game.create(name: Faker::Game.title, platform: Faker::Game.platform, category_id:5, user_id:5, review_id:5)

puts "Creating categories..."

    Category.create(name: "First-person shooter", game_id:1)
    Category.create(name: "Puzzle", game_id:2)
    Category.create(name: "Platformer", game_id:3)
    Category.create(name: "RPG", game_id:4)
    Category.create(name: "MMO", game_id:5)


# TODO: Create seeds for the models/migrations you have added
Review.create(content: "good", rating: 4, user_id: 1, game_id:1)
Review.create(content: "good enough", rating: 3, user_id: 2, game_id:2)
Review.create(content: "goodish", rating: 4, user_id: 3, game_id:3)
Review.create(content: "Good!", rating: 4, user_id: 4, game_id:4)
Review.create(content: "Good", rating: 4, user_id: 5, game_id:5)

puts "Database seeded successfully!"