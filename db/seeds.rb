puts "🌱 Seeding spices..."

# Seed your database here
User.create(username: "bloodinia", password: "coolapple1234", email: "moralesdoris67@gmail.com")
User.create(username: "xpectro", password: "risingphoenix123", email: "xpectro123@gmail.com")

Todo.create(title: "homework",content:"read pg. 12-44, do python assignment on pg. 45",user_id:1)
Todo.create(title: "buy buttermilk ranch",content:"",user_id:1)
Todo.create(title: "pick up amazon package",content:"pickup code:155432",user_id:1)

Todo.create(title: "buy milk",content:"",user_id:2)
Todo.create(title: "build legos",content:"Star Wars Death Star",user_id:2)
Todo.create(title: "call mom",content:"remind mom of doctors appointment",user_id:2)

puts "✅ Done seeding!"
