require 'faker'
require "open-uri"
Review.destroy_all
Booking.destroy_all
Human.destroy_all
User.destroy_all
puts "Clean all data"


puts "Creating humans"

petuser1 = User.create!(name: "dog", email: "eric@gmail.com", password: "password")
petuser2 = User.create!(name: "cat", email: "haiden@gmail.com", password: "password")
petuser3 = User.create!(name: "gofer", email: "sam@gmail.com", password: "password")
petuser4 = User.create!(name: "penguin", email: "harris@gmail.com", password: "password")

file_sam = URI.open('https://avatars1.githubusercontent.com/u/24800556?v=4')
sam = Human.new(name: "Sam", description: "play with you all day", address: "Las Vegas", rate: rand(1..10), user: petuser3 )
sam.photo.attach(io: file_sam, filename: 'sam.png', content_type: 'image/png')
sam.save!   

file_eric = URI.open('https://avatars2.githubusercontent.com/u/43982345?v=4')
eric = Human.new(name: "Eric", description: "play with you all day", address: "Taipei", rate: rand(1..10), user: petuser3 )
eric.photo.attach(io: file_eric, filename: 'eric.png', content_type: 'image/png')
eric.save!

file_harris = URI.open('https://avatars3.githubusercontent.com/u/59298084?v=4')
harris = Human.new(name: "Harris", description: "play with you all day", address: "Melbourne", rate: rand(1..10), user: petuser3 )
harris.photo.attach(io: file_harris, filename: 'harris.png', content_type: 'image/png')
harris.save!

file_nico = URI.open('https://avatars0.githubusercontent.com/u/43278026?v=4')
nico = Human.new(name: "Nico", description: "play with you all day", address: "Barcelona", rate: rand(1..10), user: petuser3 )
nico.photo.attach(io: file_nico, filename: 'nico.png', content_type: 'image/png')
nico.save!


file_tiffany = URI.open('https://avatars3.githubusercontent.com/u/67130477?v=4')
tiffany = Human.new(name: "Tiffany", description: "play with you all day", address: "London", rate: rand(1..10), user: petuser3 )
tiffany.photo.attach(io: file_tiffany, filename: 'tiffany.png', content_type: 'image/png')
tiffany.save!

file_lodi = URI.open('https://avatars1.githubusercontent.com/u/67579457?v=4')
lodi = Human.new(name: "Lodi", description: "play with you all day", address: "Milan", rate: rand(1..10), user: petuser3 )
lodi.photo.attach(io: file_lodi, filename: 'lodi.png', content_type: 'image/png')
lodi.save!

file_bence = URI.open('https://avatars2.githubusercontent.com/u/67093836?v=4')
bence = Human.new(name: "Bence", description: "play with you all day", address: "Paris", rate: rand(1..10), user: petuser3 )
bence.photo.attach(io: file_bence, filename: 'bence.png', content_type: 'image/png')
bence.save!


file_sharon = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1595228790/crha1cnhlullhgc8nlgf.jpg')
sharon = Human.new(name: "Sharon", description: "play with you all day", address: "Praque", rate: rand(1..10), user: petuser3 )
sharon.photo.attach(io: file_sharon, filename: 'sharon.png', content_type: 'image/png')
sharon.save!


file_mathieu = URI.open('https://avatars2.githubusercontent.com/u/64770169?v=4')
mathieu = Human.new(name: "Mathieu", description: "play with you all day", address: "Nice", rate: rand(1..10), user: petuser3 )
mathieu.photo.attach(io: file_mathieu, filename: 'mathieu.png', content_type: 'image/png')
mathieu.save!

file_sy = URI.open('https://avatars2.githubusercontent.com/u/6656014?v=4')
sy = Human.new(name: "Sy", description: "play with you all day", address: "Richmond, WA", rate: rand(1..10), user: petuser3 )
sy.photo.attach(io: file_sy, filename: 'sy.png', content_type: 'image/png')
sy.save!

mathieu_booking = Booking.new(start_date: Time.now, end_date: Time.now + 5, status: "booked", total_price: 100, user: User.all.sample, human: mathieu)
mathieu_review = Review.new(description: "good", rating: 4, booking: mathieu_booking)
mathieu_review.save!
puts "Finished!"
