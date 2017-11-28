# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product1 = Product.create(name: 'Computer', description: 'Device to access the web', price_in_cents: 150000)

product2 = Product.create(name: 'Television', description: 'Watch TV shows', price_in_cents: 30000)

product3 = Product.create(name: 'Cup', description: 'Holds Liquid', price_in_cents: 10)

review1 = Review.create(comment: "Best Product Ever!!", product_id: 1, created_at: "2017-11-28 19:59:45", updated_at: "2017-11-28 19:59:45")

review2 = Review.create(comment: "Too Bright", product_id: 2, created_at: "2017-11-28 20:00:24", updated_at: "2017-11-28 20:00:24")

review3 = Review.create(comment: "Best Way to drink coffee", product_id: 3, created_at: "2017-11-28 20:02:01", updated_at: "2017-11-28 20:02:01")

review4 = Review.create(comment: "Too addictive", product_id: 1, created_at: "2017-11-28 20:02:35", updated_at: "2017-11-28 20:02:35")

review5 = Review.create(comment: "Love to watch as I go to sleep", product_id: 2, created_at: "2017-11-28 20:07:57", updated_at: "2017-11-28 20:07:57")
