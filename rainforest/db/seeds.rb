# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product1 = Product.create(name: 'Computer', description: 'Device to access the web', price_in_cents: 150000)

product2 = Product.create(name: 'Television', description: 'Watch TV shows', price_in_cents: 30000)
#
#
# t.string "name"
# t.text "description"
# t.integer "price_in_cents"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
