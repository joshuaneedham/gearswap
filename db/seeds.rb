# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
  50.times do
    GearPost.create!(
      title: Faker::Job.title,
      description: Faker::Lorem.sentence(20, false, 0).chop,
      price: Faker::Number.decimal(l_digits: 2),
      user_id: '1'
      )
end
p "Created #{GearPost.count} gear_posts"