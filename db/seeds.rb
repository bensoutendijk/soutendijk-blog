# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users
User.create! :email => 'admin@gmail.com', :password => 'unguessable', :password_confirmation => 'unguessable', :admin => true

(2..64).each do |i|
  User.create! :email => "test#{i}@gmail.com", :password => 'asdfasdf', :password_confirmation => 'asdfasdf', :admin => false
end

# About
Article.create! title: 'About', text: 'Use the edit button to create your about page', hidden: true, user_id: 1

# Articles
(0..24).each do |i|
  Article.create! title: "Article #{i}", text: "test", hidden: false, user_id: 1 + rand(64)
end

# Votes
User.all.each do |user|
  Vote.create! weight: rand(-1..1), votable_type: "Article", votable_id: rand(15..24), user_id: user.id
end