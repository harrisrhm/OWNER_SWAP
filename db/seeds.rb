require 'faker'
Review.destroy_all
Booking.destroy_all
Human.destroy_all
User.destroy_all

puts "Creating humans"

petuser1 = User.create!(name: "Eric", email: "eric@gmail.com", password: "password")
petuser2 = User.create!(name: "Haiden", email: "haiden@gmail.com", password: "password")
petuser3 = User.create!(name: "Sam", email: "sam@gmail.com", password: "password")
petuser4 = User.create!(name: "Harris", email: "harris@gmail.com", password: "password")

# 10.times do
#     human = Human.new(
#         name: Faker::FunnyName.name, 
#         description: Faker::ChuckNorris.fact,
#         address: Faker::Address.full_address ,
#         rate: rand(1..100),
#         user: petuser
#     )
#     human.save!
# end

eric = { name: "Eric", description: "give a lot of food", address: Faker::Address.full_address, rate: rand(1..10), user: petuser1 }
harris = { name: "Harris", description: "scrach man", address: Faker::Address.full_address, rate: rand(1..10), user: petuser2 }
sam = { name: "Sam", description: "play with you all day", address: Faker::Address.full_address, rate: rand(1..10), user: petuser3 }
sharon = { name: "sharon", description: "has a lot of screens", address: Faker::Address.full_address, rate: rand(1..10), user: petuser4 }
bense = { name: "Bense", description: "like to tell joke", address: Faker::Address.full_address, rate: rand(1..10), user: petuser1 }
tiffany = { name: "Tiffany", description: "only likes cats", address: Faker::Address.full_address, rate: rand(1..10), user: petuser2 }
sy = { name: "Sy", description: "noisey", address: Faker::Address.full_address, rate: rand(1..10), user: petuser3 }
lodi = { name: "Lodi", description: "good health skill", address: Faker::Address.full_address, rate: rand(1..10), user: petuser4 }
mathieu = { name: "Mathieu", description: "nice french guy", address: Faker::Address.full_address, rate: rand(1..10), user: petuser1 }
nico = { name: "Nico", description: "talking to you all day", address: Faker::Address.full_address, rate: rand(1..10), user: petuser2 }

[eric, harris, sam, sharon, bense, tiffany, sy, lodi, mathieu, nico].each do |attributes|
  human = Human.create!(attributes)
  puts "Created #{human.name}"
end
puts "Finished!"