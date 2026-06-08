# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.create(name: "Donia", age: 22)
user2 = User.create(name: "Ahmed", age: 25)

post1 = Post.create(title: "First Post", content: "Hello World", user: user1, creator: user2)
post2 = Post.create(title: "Second Post", content: "Rails is fun", user: user2, creator: user1)

editor1 = Editor.create(name: "Editor One")
editor2 = Editor.create(name: "Editor Two")

post1.editors << editor1
post2.editors << editor2
