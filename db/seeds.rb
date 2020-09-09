require 'faker'
Human.destroy_all
User.destroy_all

puts "Creating humans"

petuser = User.create!(name: "Bubbles", email: "test@gmail.com", password: "password")

10.times do
    human = Human.new(
        name: Faker::FunnyName.name, 
        description: Faker::ChuckNorris.fact,
        address: Faker::Address.city,
<<<<<<< HEAD
        rate: (1..100).to_a.sample,
=======
        rate: rand(1..100),
>>>>>>> master
        user: petuser
    )
    human.save!
end
puts "Finish!"