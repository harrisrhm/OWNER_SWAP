require 'faker'
Human.destroy_all
User.destroy_all

puts "Creating humans"

petuser = User.create!(name: "Bubbles", email: "Bubbles@cat.dog", password: "password")

5.times do
    human = Human.new(
        name: Faker::Restaurant.name, 
        description: Faker::ChuckNorris.fact,
        address: Faker::Address.city,
        rate: (1..100).to_a.sample,
        user: petuser
    )
    human.save!
end
puts "Finish! Creating #{human.length} human "