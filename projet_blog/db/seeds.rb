require 'faker'

# La gem faker permet de créer des noms possibles de manière random.

10.times do |index| # Crée 10 users random avec Faker
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

10.times do |index|# Crée 10 catrgories random avec Faker
  category = Category.create(name: Faker::Book.genre)
end

10.times do |index| # Crée 10 articles random avec Faker
  article = Article.create(title: Faker::Book.title, content: Faker::HarryPotter.quote, user_id: rand(1..10), category_id: rand(1..10))
end

15.times do |index| # Crée 15 comments random avec Faker
  comment = Comment.create(comment: Faker::GreekPhilosophers.quote, user_id: rand(1..10), article_id: rand(1..10))
end

15.times do |index| # Crée 15 likes random avec Faker
  like = Like.create(user_id: rand(1..10), article_id: rand(1..10))
end
