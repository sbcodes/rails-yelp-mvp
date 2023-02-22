# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
10.times do
  restaurant = Restaurant.new({
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    category: %w[chinese italian japanese french belgian].sample(1)[0],
    phone_number: Faker::PhoneNumber.phone_number
    })
  puts restaurant.address
  restaurant.save!
  puts "Created #{restaurant.name}"
end

20.times do
  review = Review.new({
    rating: rand(0..5),
    content: Faker::Lorem.paragraph(sentence_count: 2)
  })
  review.restaurant = Restaurant.find(rand(1..10))
  review.save!
end

puts "Finished!"
