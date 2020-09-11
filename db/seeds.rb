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

file_sam = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQHGZIQyFcDMwg/profile-displayphoto-shrink_200_200/0?e=1605139200&v=beta&t=Jv8GYsDfFwikQgj1FQyyILWMk61L05fg27-WIDRZGYc')
sam = Human.new(name: "Sam", description: "play with you all day", address: "Las Vegas", rate: rand(1..10), user: petuser3 )
sam.photo.attach(io: file_sam, filename: 'sam.png', content_type: 'image/png')
sam.save!

file_eric = URI.open('https://media-exp1.licdn.com/dms/image/C5635AQESwIbYcVI5ig/profile-framedphoto-shrink_200_200/0?e=1599800400&v=beta&t=WL2y2C6uHUHYvKtZ1HfpVzsawXte-Mm5bi8AC0Vqmgs')
eric = Human.new(name: "Eric", description: "play with you all day", address: "Taipei", rate: rand(1..10), user: petuser3 )
eric.photo.attach(io: file_eric, filename: 'eric.png', content_type: 'image/png')
eric.save!

file_harris = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQHah_PNU-YUDw/profile-displayphoto-shrink_200_200/0?e=1605139200&v=beta&t=Mg2Fct80h0uFL518bY0mpz4m0NmeMmtA9rw5EAna6Uc')
harris = Human.new(name: "Harris", description: "play with you all day", address: "Melbourne", rate: rand(1..10), user: petuser3 )
harris.photo.attach(io: file_harris, filename: 'harris.png', content_type: 'image/png')
harris.save!

file_nico = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQEHw0rXyVqRvw/profile-displayphoto-shrink_200_200/0?e=1605139200&v=beta&t=JqrMb3OpvRzNJzhEtamROvAitdCTDDbj9khXcXSnoX8')
nico = Human.new(name: "Nico", description: "play with you all day", address: "Barcelona", rate: rand(1..10), user: petuser3 )
nico.photo.attach(io: file_nico, filename: 'nico.png', content_type: 'image/png')
nico.save!

file_tiffany = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQGRr8HV0yh0WA/profile-displayphoto-shrink_200_200/0?e=1605139200&v=beta&t=iZuXwumQvafa0upSAzp0tuBiuY169F6j8JdDAEfV0Lw')
tiffany = Human.new(name: "Tiffany", description: "play with you all day", address: "London", rate: rand(1..10), user: petuser3 )
tiffany.photo.attach(io: file_tiffany, filename: 'tiffany.png', content_type: 'image/png')
tiffany.save!

file_lodi = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQGcMvBIkbvuwg/profile-displayphoto-shrink_200_200/0?e=1605139200&v=beta&t=0K2GMjvy1Q_WNTrb-CD6liQqAb2v19nun0z0bY_fiak')
lodi = Human.new(name: "Lodi", description: "play with you all day", address: "Milan", rate: rand(1..10), user: petuser3 )
lodi.photo.attach(io: file_lodi, filename: 'lodi.png', content_type: 'image/png')
lodi.save!

file_bence = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQG-jYm6Wmdbwg/profile-displayphoto-shrink_200_200/0?e=1605139200&v=beta&t=hOVn1kacPfOS7cMANkGW_rnsMtOtthK5m-xoo8siISk')
bence = Human.new(name: "Bence", description: "play with you all day", address: "Paris", rate: rand(1..10), user: petuser3 )
bence.photo.attach(io: file_bence, filename: 'bence.png', content_type: 'image/png')
bence.save!

file_sharon = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQHFDJDqgacF_g/profile-displayphoto-shrink_200_200/0?e=1605139200&v=beta&t=8EH0HSNLxo76iIxK6l2rg8zrUgEy_584ErrspDF_aoM')
sharon = Human.new(name: "Sharon", description: "play with you all day", address: "Praque", rate: rand(1..10), user: petuser3 )
sharon.photo.attach(io: file_sharon, filename: 'sharon.png', content_type: 'image/png')
sharon.save!

file_mathieu = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQHzG6fy2PFuZQ/profile-displayphoto-shrink_200_200/0?e=1605139200&v=beta&t=qNzB1LzrmOIpStG5HFHifrxGaSJ-_YhZDjOOAcWqJRY')
mathieu = Human.new(name: "Mathieu", description: "play with you all day", address: "Nice", rate: rand(1..10), user: petuser3 )
mathieu.photo.attach(io: file_mathieu, filename: 'mathieu.png', content_type: 'image/png')
mathieu.save!

file_sy = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQGAWvRcji7HZw/profile-displayphoto-shrink_200_200/0?e=1605139200&v=beta&t=1Ja2RiKVnCis5rsKT1CiJjvxKwybMjoJU5byYGHjp8g')
sy = Human.new(name: "Sy", description: "play with you all day", address: "Richmond, WA", rate: rand(1..10), user: petuser3 )
sy.photo.attach(io: file_sy, filename: 'sy.png', content_type: 'image/png')
sy.save!

mathieu_booking = Booking.new(start_date: Time.now, end_date: Time.now + 5, status: "booked", total_price: 100, user: User.all.sample, human: mathieu)
mathieu_review = Review.new(description: "good", rating: 4, booking: mathieu_booking)
mathieu_review.save!
puts "Finished!"
