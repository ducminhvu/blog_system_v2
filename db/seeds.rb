User.create!(name:  "Vu Minh Duc",
             email: "dev.ducvu@gmail.com",
             password:              "abc123",
             password_confirmation: "abc123")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  title = Faker::Lorem.sentence(1)
  content = Faker::Lorem.sentence(6)
  users.each { |user| user.entries.create!(content: content, title: title) }
end
