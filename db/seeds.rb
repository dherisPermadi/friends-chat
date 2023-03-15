1.upto(30) do |i|
  User.create(
    email: "user-#{i}@example.com",
    name: Faker::Name.name_with_middle
  )
end
