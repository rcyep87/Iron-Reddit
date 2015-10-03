5.times do
  user = User.create({
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.last_name,
    username:   Faker::Internet.safe_email,
    password:   "pw123" })

        Link.create({
        subject: Faker::Team.creature,
        post:    Faker::Internet.url
        user_id: user.id })
end
