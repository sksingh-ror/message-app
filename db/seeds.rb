for j in 1..(5)
  user = User.new(email: "user#{j}@gmail.com", user_name: "user#{j}")
  user.save(validate: false)
end
