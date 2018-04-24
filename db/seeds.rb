# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'pry'

100.times do
  user = User.create(name: Faker::Name.last_name)
end

20.times do
	Categorie.create(name: Faker::Book.genre)
end

100.times do
	article = Article.new
	article.name = "Mon avis sur " +Faker::Book.title
	article.body = Faker::Lorem.sentence(3, true, 4)
	article.description = Faker::Lorem.sentence(1, true, 3)
	article.user_id = rand(100)
	binding.pry
	article.categories = Categorie.all[rand(20)]
	article.save	
end

