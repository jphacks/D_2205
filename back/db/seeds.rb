# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do |_|
  user = User.create(
    name: Faker::Name.unique.last_name,
    email: Faker::Internet.unique.email,
  )
  redo unless user.valid?
  5.times.sum(rand(0..2)).times do |_|
    post = Post.create(
      user: user,
      body: Faker::Lorem.paragraphs(number: rand(2..5)).join(" "),
    )
    redo unless post.valid?
    post.image.attach(io: File.open(Rails.root.join('app/assets/images/dummy.png')), filename: 'dummy.png')
  end
end
