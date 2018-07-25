require 'faker'

10.times do |index|
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

10.times do |index|
  article = Article.create(title: Faker::Book.title, content: Faker::HarryPotter.quote, user_id: rand(1..10), category_id: rand(1..10))
end

10.times do |index|
  category = Category.create(name: Faker::Book.genre)
end

15.times do |index|
  comment = Comment.create(comment: "Commentaire Yolo !", user_id: rand(1..10), article_id: rand(1..10))
end

15.times do |index|
  like = Like.create(user_id: rand(0..10), article_id: rand(0..10))
end
