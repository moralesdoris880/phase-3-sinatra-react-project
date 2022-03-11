puts "🌱 Seeding spices..."

# Seed your database here
user1=User.create(username: "bloodinia", password: "coolapple1234", email: "moralesdoris67@gmail.com")
user2=User.create(username: "xpectro", password: "risingphoenix123", email: "xpectro123@gmail.com")

user1.todos.create(title: "homework")
user1.todos.create(title: "buy buttermilk ranch")
user1.todos.create(title: "pick up amazon package")

user2.todos.create(title: "buy milk")
user2.todos.create(title: "build legos")
user2.todos.create(title: "call mom")

puts "✅ Done seeding!"
