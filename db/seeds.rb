# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#Création faux user
10.times do |index|
user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end



#Création Article 10 articles en base de données.
10.times do
article = Article.create!(title: Faker::Name.first_name, content: Faker::Lorem.paragraph, user_id: Faker::Number.between(1, 20), categorie_id: Faker::Number.between(1,5))
end

#crée avec le seed 5 catégories, puis associe tes 10 articles à une des catégories.

#création 15 comments
15.times do
comment = Comment.create!(content: Faker::Lorem.paragraph, user_id: Faker::Number.between(User.first.id, User.last.id), article_id: Faker::Number.between(Article.first.id, Article.last.id))
end
