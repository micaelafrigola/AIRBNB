if Rails.env.development?
  User.create(email: "abc@gmail.com", password: 123456, first_name:"Harry", last_name:"Potter")
  User.create(email: "abcccccc@gmail.com", password: 123455, first_name:"Mica", last_name:"caca")
end
