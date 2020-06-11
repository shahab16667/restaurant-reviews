puts "cleaning up database"
Restaurant.destroy_all
puts "database is clean now"

200.times do
    restaurant = Restaurant.create(
        name: Faker::Restaurant.name,
        chef_name: Faker::Name.unique.name,
        address: Faker::Address.street_address,
        rating: rand(1..5)
    )
    puts "restaurant #{restaurant.id} is created"
end

puts 'done'