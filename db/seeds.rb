# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

giles = User.create(name: "Giles")
rose = User.create(name: "Rose")
running = Category.create(name: "Running")
sneakers = Product.create(name: "Sneakers", category_id: running.id)
deal_one = Deal.create(buyer_id: giles.id, seller_id: rose.id, product_id: sneakers.id)
