require 'faker'

puts "Generating Restaurants"

100.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name ,
    city: Faker::Address.city
  )
  restaurant.save
end

puts "You have #{Restaurant.count} restaurants"
