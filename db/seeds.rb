require "open-uri"

puts "Cleaning database..."
Reservation.destroy_all
Flat.destroy_all
User.destroy_all

puts "Creating users..."
abc = { email: "abc@gmail.com", password: "jU7#2kL$8@6!", first_name: "Harry", last_name: "Potter", admin: true }
abcc = { email: "abcccccc@gmail.com", password: "5x#G!9fK@3w", first_name: "Mica", last_name: "caca", admin: false }
baby = { email: "baby@gmail.com", password: "P$7&b2R#f4", first_name: "Baby", last_name: "Boy", admin: false }
mica = { email: "mica@gmail.com", password: "P$7&b2R#f4", first_name: "Mica", last_name: "Frigola", admin: false }
thiago = { email: "thiago@gmail.com", password: "P$7&b2R#f4", first_name: "Thiago", last_name: "Quevedo", admin: false }
marian = { email: "marian@gmail.com", password: "P$7&b2R#f4", first_name: "Marian", last_name: "Sanchez", admin: false }
fran = { email: "fran@gmail.com", password: "P$7&b2R#f4", first_name: "Fran", last_name: "Burt", admin: false }
loli = { email: "loli@gmail.com", password: "P$7&b2R#f4", first_name: "Loli", last_name: "Sosa", admin: false }
leo = { email: "leo@gmail.com", password: "P$7&b2R#f4", first_name: "Leo", last_name: "Brown", admin: false }
tina = { email: "tina@gmail.com", password: "P$7&b2R#f4", first_name: "Tina", last_name: "Breuer", admin: false }
chano = { email: "chano@gmail.com", password: "P$7&b2R#f4", first_name: "Chano", last_name: "Berni", admin: false }
yoyo = { email: "yoyo@gmail.com", password: "P$7&b2R#f4", first_name: "Yoyo", last_name: "Pompa", admin: false }
cuca = { email: "cuca@gmail.com", password: "P$7&b2R#f4", first_name: "Cuca", last_name: "Girl", admin: false }
lali = { email: "lali@gmail.com", password: "P$7&b2R#f4", first_name: "Lali", last_name: "Sosa", admin: false }

puts "Creating flats..."
wagon = { name: "Fancy Department", address: "Rue de la paix", description: "Super flat", occupancy: 2, price: 200, image_url: "https://images.unsplash.com/photo-1479839672679-a46483c0e7c8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=710&q=80" }
winter = { name: "Winter house", address: "Chile", description: "Escape to our charming winter retreat! This cozy Airbnb offers a crackling fireplace, panoramic mountain views, and a private hot tub. Experience the magic of winter in comfort and style.", occupancy: 6, price: 500, image_url: "https://images.unsplash.com/photo-1513584684374-8bab748fbf90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTh8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60"}
beach = { name: "Beach house", address: "Uruguay", description: "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80", occupancy: 6, price: 600, image_url: "https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60"}
small = { name: "Small House", address: "England", description: "Welcome to our charming small house retreat! This cozy Airbnb is a delightful sanctuary that offers all the comforts of home in a compact and inviting space. With its thoughtfully designed interior, comfortable furnishings, and a serene atmosphere, this small house provides a peaceful getaway for those seeking simplicity and tranquility", occupancy: 2, price: 200, image_url: "https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60"}
big = { name: "Big house", address: "England", description: "Indulge in luxury and grandeur at our magnificent big house retreat! This expansive Airbnb is a lavish haven that boasts ample space and opulent amenities. With its impressive architecture, multiple bedrooms and bathrooms, sprawling living areas, and exquisite furnishings, this big house offers an unforgettable experience for larger groups or those desiring a truly extravagant getaway.", occupancy: 10, price: 800, image_url: "https://images.unsplash.com/photo-1598228723793-52759bba239c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTR8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=800&q=60" }
chalet = { name: "Chalet", address: "Switzerland", description: "Escape to our charming chalet retreat! This cozy Airbnb chalet is nestled in the midst of picturesque mountains, offering a rustic and enchanting getaway. With its warm and inviting ambiance, woodsy decor, and breathtaking views, this chalet is the perfect place to unwind and reconnect with nature. Curl up by the fireplace, take in the fresh mountain air, and create unforgettable memories in this idyllic alpine haven.", occupancy: 2, price: 200, image_url: "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NTZ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60" }
resort = { name: "Resort", address: "Mexico", description: "Welcome to our breathtaking resort paradise! This luxurious Airbnb resort is a haven of relaxation and recreation, where you can immerse yourself in ultimate comfort and indulgence. With its stunning grounds, world-class amenities, and impeccable service, this resort offers an unforgettable escape. From rejuvenating spa treatments to exhilarating outdoor activities, every moment spent here is a celebration of leisure and tranquility.", occupancy: 10, price: 900, image_url: "https://images.unsplash.com/photo-1613490493576-7fde63acd811?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NDN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60" }
flat = { name: "Buenos Aires", address: "Argentina", description: "Super flat", occupancy: 2, price: 200, image_url: "https://images.unsplash.com/photo-1560185007-5f0bb1866cab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nzh8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60" }
wago = { name: "Flat", address: "Argentina", description: "Super flat", occupancy: 2, price: 200, image_url: "https://images.unsplash.com/photo-1595877244574-e90ce41ce089?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8OTV8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60" }

puts "Creating reservations..."
one = { start_date: Date.parse('2023-06-01'), end_date: Date.parse('2023-06-02'), num_of_guests: 3 }
two = { start_date: Date.parse('2023-08-12'), end_date: Date.parse('2023-08-23'), num_of_guests: 2 }
three = { start_date: Date.parse('2023-07-22'), end_date: Date.parse('2023-07-30'), num_of_guests: 4 }
four = { start_date: Date.parse('2023-08-22'), end_date: Date.parse('2023-08-24'), num_of_guests: 2 }
five = { start_date: Date.parse('2023-09-12'), end_date: Date.parse('2023-09-15'), num_of_guests: 4, status: true }
six = { start_date: Date.parse('2023-09-22'), end_date: Date.parse('2023-09-24'), num_of_guests: 2, status: true }
seven = { start_date: Date.parse('2023-09-15'), end_date: Date.parse('2023-09-18'), num_of_guests: 3, status: true }


[{ flat: wagon, reservation: one, user: abc, user_owner: baby }].each do |item|
  puts item
  user = User.create!(item[:user])
  user_owner = User.create(item[:user_owner])
  file = URI.open(item[:flat][:image_url])
  flat = Flat.new(item[:flat])
  flat.photo.attach(io: file, filename: "test.jpg", content_type: "image/jpg")
  flat.user = user_owner
  flat.save
  reservation = Reservation.new(item[:reservation])
  reservation.user = user
  reservation.flat = flat
end

[{ flat: winter, reservation: two, user: abcc, user_owner: mica }].each do |item|
  puts item
  user = User.create!(item[:user])
  user_owner = User.create(item[:user_owner])
  file = URI.open(item[:flat][:image_url])
  flat = Flat.new(item[:flat])
  flat.photo.attach(io: file, filename: "test.jpg", content_type: "image/jpg")
  flat.user = user_owner
  flat.save
  reservation = Reservation.new(item[:reservation])
  reservation.user = user
  reservation.flat = flat
end

[{ flat: beach, reservation: three, user: thiago, user_owner: marian }].each do |item|
  puts item
  user = User.create!(item[:user])
  user_owner = User.create(item[:user_owner])
  file = URI.open(item[:flat][:image_url])
  flat = Flat.new(item[:flat])
  flat.photo.attach(io: file, filename: "test.jpg", content_type: "image/jpg")
  flat.user = user_owner
  flat.save
  reservation = Reservation.new(item[:reservation])
  reservation.user = user
  reservation.flat = flat
end

[{ flat: small, reservation: four, user: fran, user_owner: loli }].each do |item|
  puts item
  user = User.create!(item[:user])
  user_owner = User.create(item[:user_owner])
  file = URI.open(item[:flat][:image_url])
  flat = Flat.new(item[:flat])
  flat.photo.attach(io: file, filename: "test.jpg", content_type: "image/jpg")
  flat.user = user_owner
  flat.save
  reservation = Reservation.new(item[:reservation])
  reservation.user = user
  reservation.flat = flat
end

[{ flat: big, reservation: five, user: chano, user_owner: yoyo }].each do |item|
  puts item
  user = User.create!(item[:user])
  user_owner = User.create(item[:user_owner])
  file = URI.open(item[:flat][:image_url])
  flat = Flat.new(item[:flat])
  flat.photo.attach(io: file, filename: "test.jpg", content_type: "image/jpg")
  flat.user = user_owner
  flat.save
  reservation = Reservation.new(item[:reservation])
  reservation.user = user
  reservation.flat = flat
end

[{ flat: resort, reservation: six, user: cuca, user_owner: lali }].each do |item|
  puts item
  user = User.create!(item[:user])
  user_owner = User.create(item[:user_owner])
  file = URI.open(item[:flat][:image_url])
  flat = Flat.new(item[:flat])
  flat.photo.attach(io: file, filename: "test.jpg", content_type: "image/jpg")
  flat.user = user_owner
  flat.save
  reservation = Reservation.new(item[:reservation])
  reservation.user = user
  reservation.flat = flat
end

[{ flat: chalet, reservation: seven, user: leo, user_owner: tina }].each do |item|
  puts item
  user = User.create!(item[:user])
  user_owner = User.create(item[:user_owner])
  file = URI.open(item[:flat][:image_url])
  flat = Flat.new(item[:flat])
  flat.photo.attach(io: file, filename: "test.jpg", content_type: "image/jpg")
  flat.user = user_owner
  flat.save
  reservation = Reservation.new(item[:reservation])
  reservation.user = user
  reservation.flat = flat
end
puts "Finished!"
