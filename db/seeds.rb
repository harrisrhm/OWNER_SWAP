require 'faker'
Human.destroy_all
User.destroy_all

puts "Creating humans"

petuser = User.create!(name: "Bubbles", email: "test@gmail.com", password: "password")

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
eric = { name: "Eric", description: "give a lot of food", address: Faker::Address.full_address, rate: rand(1..10), user: petuser }
harris = { name: "Harris", description: "like scrach", address: Faker::Address.full_address, rate: rand(1..10), user: petuser }
sam = { name: "Sam", description: "like to play with me", address: Faker::Address.full_address, rate: rand(1..10), user: petuser }
haiden = { name: "Haiden", description: "cold-blood", address: Faker::Address.full_address, rate: rand(1..10), user: petuser }
bense = { name: "Bense", description: "like to tell joke", address: Faker::Address.full_address, rate: rand(1..10), user: petuser }
tiffany = { name: "Tiffany", description: "she only likes cats", address: Faker::Address.full_address, rate: rand(1..10), user: petuser }
sy = { name: "Sy", description: "he is noisey", address: Faker::Address.full_address, rate: rand(1..10), user: petuser }
lodi = { name: "Lodi", description: "good health skill", address: Faker::Address.full_address, rate: rand(1..10), user: petuser }
mathieu = { name: "Mathieu", description: "nice french guy", address: Faker::Address.full_address, rate: rand(1..10), user: petuser }
nico = { name: "Nico", description: "talking to you all day", address: Faker::Address.full_address, rate: rand(1..10), user: petuser }

[eric, harris, sam, haiden, bense, tiffany, sy, lodi, mathieu, nico].each do |attributes|
  human = Human.create!(attributes)
  puts "Created #{human.name}"
end
puts "Finished!"