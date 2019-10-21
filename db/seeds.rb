# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'Sarah', password_digest: "password1", email: 'one@gmail.com' )
User.create(username: 'Ilita', password_digest: "password2", email: 'two@gmail.com' )

Seller.create(name: 'freshFields', email: 'fields@gmaill.com', image: 'fields' )
Seller.create(name: 'Pickle', email: 'pickle@gmaill.com', image: 'sour' )

Product.create(name: 'Beetroot', price: 2, image: 'beetroot', seller_id: Seller.first.id)
Product.create(name: 'cucumber', price: 1, image: 'cucmber', seller_id: Seller.last.id)

Order.create(user_id: User.first.id, total: 0)
Order.create(user_id: User.last.id, total: 0)


OrderItem.create( order_id: Order.first.id, product_id: Product.first.id)
OrderItem.create( order_id: Order.last.id, product_id: Product.last.id)



