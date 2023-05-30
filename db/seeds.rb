if Rails.env.development?
  User.create(email: "abc@gmail.com", password: 123456, first_name:"Harry", last_name:"Potter", admin: true)
  User.create(email: "abcccccc@gmail.com", password: 123455, first_name:"Mica", last_name:"caca", admin: false)
  User.create(email: "baby@gmail.com", password: 123456, first_name:"Baby", last_name:"Boy", admin: false)

  Flat.create(name: "Le wagon flat", address: "Rue de la paix", description: "Super flat", occupancy: 2, price: 200, image_url: "https://www.sleek-chic.co.uk/wp-content/uploads/2021/12/Untitled-design-214.png", user_id: 1)
  Flat.create(name: "Horror Flat", address: "Lonely forest", description: "Super scary", occupancy: 2, price: 500, image_url: "https://img.itch.zone/aW1hZ2UvMTMwNzM4Mi83NjA0OTc4LnBuZw==/original/aq71o1.png", user_id: 2)
  Flat.create(name: "Lovely Flat", address: "Disney Land", description: "Super cute", occupancy: 4, price: 1100, image_url: "https://media.wdwnt.com/2020/11/20201120_HKDL_15th-Anniversary-Launch-Celebration_Castle-of-Magical-Dreams-6-2448857.jpg", user_id: 3)
end
