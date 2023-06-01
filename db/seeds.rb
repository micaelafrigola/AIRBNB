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
wagon = {name: "Fancy Department", address: "Rue de la paix", description: "Super flat", occupancy: 2, price: 200, image_url: "https://images.unsplash.com/photo-1479839672679-a46483c0e7c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=710&q=80", user_id: 1}
horror =  {name: "Horror Flat", address: "Lonely forest", description: "Super scary", occupancy: 2, price: 500, image_url: "https://img.itch.zone/aW1hZ2UvMTMwNzM4Mi83NjA0OTc4LnBuZw==/original/aq71o1.png", user_id: 2}
love = {name: "Lovely Flat", address: "Disney Land", description: "Super cute", occupancy: 4, price: 1100, image_url: "https://media.wdwnt.com/2020/11/20201120_HKDL_15th-Anniversary-Launch-Celebration_Castle-of-Magical-Dreams-6-2448857.jpg", user_id: 3}
winter = {name: "Winter house", address: "Chile", description: "Escape to our charming winter retreat! This cozy Airbnb offers a crackling fireplace, panoramic mountain views, and a private hot tub. Experience the magic of winter in comfort and style.", occupancy: 6, price: 500, image_url: "https://images.unsplash.com/photo-1513584684374-8bab748fbf90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTh8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60", user_id: 2}
beach = {name: "Beach house", address: "Uruguay", description: "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80", occupancy: 6, price: 600, image_url: "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60", user_id: 3}
depto = {name: "Department", address: "France", description:"Discover the perfect urban escape at our stylish downtown apartment! Located in the heart of the city, this Airbnb offers a modern and comfortable space for you to unwind and explore. With its sleek design, convenient amenities, and proximity to vibrant shops and restaurants, this apartment is the ideal home base for your city adventure.", occupancy: 2, price: 400, image_url: "https://www.sleek-chic.co.uk/wp-content/uploads/2021/12/Untitled-design-214.png", user_id: 1}
small = {name: "Small House", address: "England", description: "Welcome to our charming small house retreat! This cozy Airbnb is a delightful sanctuary that offers all the comforts of home in a compact and inviting space. With its thoughtfully designed interior, comfortable furnishings, and a serene atmosphere, this small house provides a peaceful getaway for those seeking simplicity and tranquility", occupancy: 2, price: 200, image_url: "https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60", user_id: 3}
big = {name: "Big house", address: "England", description: "Indulge in luxury and grandeur at our magnificent big house retreat! This expansive Airbnb is a lavish haven that boasts ample space and opulent amenities. With its impressive architecture, multiple bedrooms and bathrooms, sprawling living areas, and exquisite furnishings, this big house offers an unforgettable experience for larger groups or those desiring a truly extravagant getaway.", occupancy: 10, price: 800, image_url: "https://images.unsplash.com/photo-1598228723793-52759bba239c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTR8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60", user_id: 2}
chalet = {name: "Chalet", address: "Switzerland", description: "Escape to our charming chalet retreat! This cozy Airbnb chalet is nestled in the midst of picturesque mountains, offering a rustic and enchanting getaway. With its warm and inviting ambiance, woodsy decor, and breathtaking views, this chalet is the perfect place to unwind and reconnect with nature. Curl up by the fireplace, take in the fresh mountain air, and create unforgettable memories in this idyllic alpine haven.", occupancy: 2, price: 200, image_url: "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NTZ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60", user_id: 1}
resort = {name: "Resort", address: "Mexico", description: "Welcome to our breathtaking resort paradise! This luxurious Airbnb resort is a haven of relaxation and recreation, where you can immerse yourself in ultimate comfort and indulgence. With its stunning grounds, world-class amenities, and impeccable service, this resort offers an unforgettable escape. From rejuvenating spa treatments to exhilarating outdoor activities, every moment spent here is a celebration of leisure and tranquility.", occupancy: 10, price: 900, image_url: "https://images.unsplash.com/photo-1613490493576-7fde63acd811?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NDN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60", user_id: 1}
flat = {name: "Buenos Aires", address: "Argentina", description: "Super flat", occupancy: 2, price: 200, image_url: "https://images.unsplash.com/photo-1560185007-5f0bb1866cab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nzh8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60", user_id: 3}
wago = {name: "Flat", address: "Argentina", description: "Super flat", occupancy: 2, price: 200, image_url: "https://images.unsplash.com/photo-1595877244574-e90ce41ce089?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8OTV8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60", user_id: 2}

[wagon, horror, love, beach, small, depto, big, chalet, resort, flat, wago, winter].each do |attributes|
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
