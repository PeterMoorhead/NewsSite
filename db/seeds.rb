User.create!(name: "Example User",
             email:"example@railstutorial.org",
             password:"foobar",
             password_confirmation:"foobar",
             phone: "0431582902",
             admin: true,
             location: "America")

User.create!(name: "RAD",
             email:"rad2020rmit@gmail.com",
             password:"Rails2020",
             password_confirmation:"Rails2020",
             phone: "0499252000",
             admin: true,
             location: "RMIT Campus")

99.times do |n| 
    name = Faker::Name.name
    email="example-#{n+1}@railstutorial.org"
    password="password"
    phone="00000000"
    location="Melbourne"
    User.create!(name:name, 
                 email: email,
                 password:password,
                 password_confirmation: password,
                 phone: phone,
                 location: location)
end
users = User.order(:created_at).take(6)
50.times do
    title = "Random News Title"
    content = Faker::Lorem.sentence(5)
    category = 'News'
    views = 40
    commentCount = rand(40)
    users.each { |user| user.microposts.create!(title: title,content: content, category: category, views: views, commentCount: commentCount) }
end

microposts = Micropost.order(:created_at).take(6)
uid = 0
30.times do
    uid += 1
    content = Faker::Lorem.sentence(5)
    microposts.each { |micropost| micropost.comments.create!(user_id: uid, content: content) }
end
