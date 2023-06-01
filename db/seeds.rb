# if Rails.env.development?
#   User.create(email: "abc@gmail.com", password: "jU7#2kL$8@6!", first_name: "Harry", last_name: "Potter", admin: true)
#   User.create(email: "abcccccc@gmail.com", password: "5x#G!9fK@3w", first_name: "Mica", last_name: "caca", admin: false)
#   User.create(email: "baby@gmail.com", password: "P$7&b2R#f4", first_name: "Baby", last_name: "Boy", admin: false)

#   Flat.create(name: "Le wagon flat", address: "Rue de la paix", description: "Super flat", occupancy: 2, price: 200, image_url: "https://www.sleek-chic.co.uk/wp-content/uploads/2021/12/Untitled-design-214.png", user_id: 1)
#   Flat.create(name: "Horror Flat", address: "Lonely forest", description: "Super scary", occupancy: 2, price: 500, image_url: "https://img.itch.zone/aW1hZ2UvMTMwNzM4Mi83NjA0OTc4LnBuZw==/original/aq71o1.png", user_id: 2)
#   Flat.create(name: "Lovely Flat", address: "Disney Land", description: "Super cute", occupancy: 4, price: 1100, image_url: "https://media.wdwnt.com/2020/11/20201120_HKDL_15th-Anniversary-Launch-Celebration_Castle-of-Magical-Dreams-6-2448857.jpg", user_id: 3)

#   Reservation.create(start_date: Date.parse('2023-06-01'), end_date: Date.parse('2023-06-02'), num_of_guests: 3, user_id: 1, flat_id: 3)
#   Reservation.create(start_date: Date.parse('2023-08-12'), end_date: Date.parse('2023-08-23'), num_of_guests: 2, user_id: 2, flat_id: 2)
#   Reservation.create(start_date: Date.parse('2023-07-22'), end_date: Date.parse('2023-07-30'), num_of_guests: 4, user_id: 3, flat_id: 1)
# end

puts "Cleaning database..."
User.destroy_all

puts "Creating users..."
abc = {email: "abc@gmail.com", password: "jU7#2kL$8@6!", first_name: "Harry", last_name: "Potter", admin: true}
abcc = {email: "abcccccc@gmail.com", password: "5x#G!9fK@3w", first_name: "Mica", last_name: "caca", admin: false}
baby = {email: "baby@gmail.com", password: "P$7&b2R#f4", first_name: "Baby", last_name: "Boy", admin: false}
[abc, abcc, baby].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.email}"
end

Flat.destroy_all

puts "Creating flats..."
wagon = {name: "Le wagon flat", address: "Rue de la paix", description: "Super flat", occupancy: 2, price: 200, image_url: "https://www.sleek-chic.co.uk/wp-content/uploads/2021/12/Untitled-design-214.png", user_id: 1}
horror =  {name: "Horror Flat", address: "Lonely forest", description: "Super scary", occupancy: 2, price: 500, image_url: "https://img.itch.zone/aW1hZ2UvMTMwNzM4Mi83NjA0OTc4LnBuZw==/original/aq71o1.png", user_id: 2}
love = {name: "Lovely Flat", address: "Disney Land", description: "Super cute", occupancy: 4, price: 1100, image_url: "https://media.wdwnt.com/2020/11/20201120_HKDL_15th-Anniversary-Launch-Celebration_Castle-of-Magical-Dreams-6-2448857.jpg", user_id: 3}
[wagon, horror, love].each do |attributes|

  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end

Reservation.destroy_all

puts "Creating reservations..."
one = {start_date: Date.parse('2023-06-01'), end_date: Date.parse('2023-06-02'), num_of_guests: 3, user_id: 1, flat_id: 3}
two = {start_date: Date.parse('2023-08-12'), end_date: Date.parse('2023-08-23'), num_of_guests: 2, user_id: 2, flat_id: 2}
three = {start_date: Date.parse('2023-07-22'), end_date: Date.parse('2023-07-30'), num_of_guests: 4, user_id: 3, flat_id: 1}
[one, two, three].each do |attributes|
  reservation = Reservation.create!(attributes)
  puts "Created #{reservation.start_date}"
end
puts "Finished!"
