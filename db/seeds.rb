# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.email = "admin@test.com"           # 可以改成自己的 email

u.password = "123456"                # 最少要六码

u.password_confirmation = "123456"   # 最少要六码

u.is_admin = true

u.save
p = Product.new
p.title = "野生动物保护基金会"
p.description = "每一分钱都用于物种续存和拯救"
p.price = 50
p.quantity = 100000000
p.animal = "normal"
p.protect_them = false

p.save
