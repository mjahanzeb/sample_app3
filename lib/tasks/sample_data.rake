namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    # Two custom users and 99 random users
    admin = User.create!(name: "Example User",
                         email: "example@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: true)

    admin = User.create!(name: "Saima Malik",
                     email: "saima@msn.com",
                     password: "abc123",
                     password_confirmation: "abc123",
                     admin: true)

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   admin: false)
    end
    
    # Populate first 6 users with 50 microposts each
    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end

  end
end
