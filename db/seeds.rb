# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Order.destroy_all
OrderItem.destroy_all
User.destroy_all
Seller.destroy_all
Product.destroy_all


User.create(username: 'Sarah', password: "password1", email: 'one@gmail.com' )
User.create(username: 'Ilita', password: "password2", email: 'two@gmail.com' )

Seller.create(name: 'mandy johnson', email: 'fields@gmaill.com', image: 'https://www.riverford.co.uk/media/about-us/kitchen-pantry.jpg', description: 'l
    Our mayonnaise is made in Ashburton, Devon by Mandy and Andy Johnson from Laydilay. They’ve been producing organic eggs since April 2004 with 70 mid lay hens in a small rented orchard in Buckfastleigh.')
Seller.create(name: 'Cropwell Bishop', email: 'pickle@gmaill.com', image: 'https://www.riverford.co.uk/media/about-us/cheese_cropwell_bishop_stilton.jpg', description: '
    Our stilton cheese comes from Luke Chapman at Cropwell Bishop Creamery in the Vale of Belvoir, eight miles from Nottingham.')
Seller.create(name: 'Andy Hayllor', email: 'andy@gmail.com', image: 'https://www.riverford.co.uk/media/about-us/andy_haylor.jpg ', description: 'One of Guy Watson’s neighbours is Andy Hayllor, who farms around 800 acres of the rolling south Devon hills and supplies Riverford with a wide range of veg for their boxes as well as free-range organic chickens for the table')
Seller.create(name: 'Anthony & Mary Lou Coker', email: 'anto@yahoo.com', image: 'https://www.riverford.co.uk/media/about-us/wash-anthony-coker.jpg', description: "The main crops grown at Home Park Farm are the great Brussels sprouts we provide at Christmas, kale, parsnips, leeks, squash and courgettes. He loves growing all of them, but the sprouts are his favourite. Anthony claims he wouldn't grow anything he doesn't like to eat and has been working with Guy as part of the South Devon Organic Producer co-op right from the start.")
Seller.create(name: 'Ian & Alison Samuel', email: 'samuel.yahoo.com', image: 'https://www.riverford.co.uk/media/about-us/wash-ian-and-alison.jpg', description: 'They run a traditional mixed farm, with both livestock and vegetables, which minimises outside inputs because the muck from the stock can be used to fertilise the crops, and the crops feed the animals.Alongside fields of carrots, cabbages, purple sprouting broccoli, beetroot, leaks and broad beans – all of which find their way into the boxes - they have a small beef fattening herd and some free-range chickens')
Seller.create(name: 'Peter Richardson - Home Farm', email: 'farms@hotmail.com', image: 'https://www.riverford.co.uk/media/about-us/home-peter-richardson.jpg', description: 'The key to success is being strict about crop rotation. “With conventional farming, you could plant potatoes in the same place every three years but with organic methods it’s once every seven years. You don’t want the pests and soil-borne diseases.')
Seller.create(name: 'Bettina and Enrique Scholtz, Agro Roca', email: 'bettina@gmail.com', image: 'https://www.riverford.co.uk/media/growers/Enrique-Sholtz.jpg', description: 'Our Argentinian apples are grown by Bettina and Enrique Scholz, in their river valley orchards in the Rio Negro province. The climate is sunny and dry, but the river provides all the necessary water; it comes straight from the glaciers in the High Andes.')
Seller.create(name: 'Clive Martin', email: 'martin@gmail.cim', image: 'https://www.riverford.co.uk/media/about-us/sacrewell-clive-martin.jpg', description: '
    “The best thing about being organic is being in tune with nature and being able to produce top quality food in an environmentally friendly way.” says Clive Martin, who grows our asparagus')
Seller.create(name: 'Jonathon Smales - Lyburn Farm', email: 'smales@gmail.com', image: 'https://www.riverford.co.uk/media/about-us/norton-jonathon-smales.jpg', description: 'With good soils and excellent light levels the Smale family farm in the New Forest is a great spot for growing. Jonathon uses grass and clover leys as part of a crop rotation to help build fertility, and fleece and plastic coating to keep down pests.“Our main problem is deer – there are hundreds and they will eat anything given half a chance. The runner beans and rhubarb can need a lot of irrigation as well when the weather is hot.”')
Seller.create(name: 'Mike Fisher - Northdown Orchard', email: 'fisher@gmail.com', image: 'https://www.riverford.co.uk/media/about-us/norton-mike-fisher.jpg', description: '“This isn’t the best growing land,” he admits. “It’s very thin, chalky soil. But with clover lays and green cover crops I’m gradually building the fertility. And it’s working. Every year it seems to get easier to plough, and biological pest controls seem less and less necessary as the natural balance between pests and beneficial predators establishes itself.')


Product.create(name: 'Beetroot', price: 3, image: 'https://images.unsplash.com/photo-1527790806964-dfa3c2c7e032?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=678&q=80', seller_id: Seller.all.sample.id)
Product.create(name: 'Cucumbers', price: 1, image: 'https://images.unsplash.com/photo-1449300079323-02e209d9d3a6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80', seller_id: Seller.all.sample.id)
Product.create(name: 'Tomatoes', price: 2, image: 'https://images.unsplash.com/photos/dJHdolN553o', seller_id: Seller.all.sample.id)
Product.create(name: 'Peppers', price: 2, image: 'https://images.unsplash.com/photo-1506810487030-e7f94a5eef74?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', seller_id: Seller.all.sample.id)
Product.create(name: 'Asparagus', price: 3, image: 'https://images.unsplash.com/photo-1555704574-f9ecf4717298?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80', seller_id: Seller.all.sample.id)
Product.create(name: 'Cauliflowers', price: 2, image: 'https://images.unsplash.com/photo-1510627498534-cf7e9002facc?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80', seller_id: Seller.all.sample.id)
Product.create(name: 'Radishes', price: 1, image: 'https://images.unsplash.com/photo-1504945005722-33670dcaf685?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2734&q=80', seller_id: Seller.all.sample.id)
Product.create(name: 'PakChoi', price: 3, image: 'https://images.unsplash.com/photo-1511993226957-cd166aba52d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=686&q=80', seller_id: Seller.all.sample.id)
Product.create(name: 'Aubergine', price: 2, image: 'https://images.unsplash.com/photo-1560951812-58e6bce53149?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2736&q=80', seller_id: Seller.all.sample.id)
Product.create(name: 'Carrots', price: 1, image: '', seller_id: Seller.all.sample.id)
Product.create(name: 'Mushrooms', price: 2, image: '', seller_id: Seller.all.sample.id)
Product.create(name: 'Onion', price: 1, image: '', seller_id: Seller.all.sample.id)
Product.create(name: 'Broccoli', price: 2, image: '', seller_id: Seller.all.sample.id)
Product.create(name: 'Pumpkin', price: 4, image: '', seller_id: Seller.all.sample.id)
Product.create(name: 'Potatoes', price: 2, image: '', seller_id: Seller.all.sample.id)
Product.create(name: 'Avocados', price: 4, image: '', seller_id: Seller.all.sample.id)
Product.create(name: 'Apples', price: 2, image: '', seller_id: Seller.all.sample.id)
Product.create(name: 'Grapes', price: 1, image: '', seller_id: Seller.all.sample.id)
Product.create(name: 'Lemons', price: 2, image: '', seller_id: Seller.all.sample.id)

Order.create(user_id: User.first.id)
Order.create(user_id: User.last.id)


OrderItem.create( order_id: Order.first.id, product_id: Product.first.id)
OrderItem.create( order_id: Order.last.id, product_id: Product.last.id)



