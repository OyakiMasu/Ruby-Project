puts "seeding data..."

# create categories
Category.create(name: "Cakes")
Category.create(name: "Pastries")
Category.create(name: "Cookies")


# food
    
Food.create([
{
"name": "Red Velvet cake",
"price": 20,
"star_rating": 4,
"description": "Red velvet cake has endured as one of the most popular cakes in the United States.Cake's name is a descriptor of its soft, velvety texture.",
"in_stock": true,
"image": "https://images.unsplash.com/photo-1586788680434-30d324b2d46f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVkJTIwdmVsdmV0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
"category_id": 1
}, 
{
"name": "Black Forest cake",
"price": 25,
"star_rating": 4,
"description": "Typically, Black Forest cake is made by soaking the chocolate sponge in sugar syrup flavored with cherry brandy and topped with whipped cream.",
"in_stock": true,
"image": "https://media.istockphoto.com/id/1327824483/photo/image-of-sliced-black-forest-gateau-with-piped-whipped-cream-rosettes-with-morello-cherries.jpg?b=1&s=170667a&w=0&k=20&c=PeLWsfUyUe3mliVIV1tPvbQpQmC0u_pge8kp5eFeWro=",
"category_id":1
},
{
"name": "Cupcakes",
"price": 5,
"star_rating": 3,
"description": "Cupcakes in general come in almost every flavor as traditional cakes, so you can customize your batch to your liking.",
"in_stock": true,
"image": "https://media.istockphoto.com/id/1324582711/photo/chocolate-and-vanilla-mini-desserts-cream-cupcakes-panacotas.jpg?b=1&s=170667a&w=0&k=20&c=p3_ZRRf1yXrZoslETdu4itmTgCWsgVvhJBF8UUe25GU=",
"category_id":1
},
{
"name": "Apricot Danish",
"price": 15,
"star_rating": 4,
"description": "Apricot Danishes are easy and delicious! Chopped fresh apricots on a bed of sweetened cream cheese wrapped in buttery, crispy puff pastry.",
"in_stock": true,
"image": "https://media.istockphoto.com/id/1399448503/photo/apricot-danish-pastries-on-a-white-napkin-the-cakes-are-served-in-a-tall-glass-vase-close-up.jpg?b=1&s=170667a&w=0&k=20&c=xRsdf3iC_4iOtg4Vf3XT33HSZjIc14hmnNx6XM43GFU=",
"category_id":2
},
{
"name": "Chocolate tarts",
"price": 15,
"star_rating": 4,
"description": "Get ready to swoon! These rich and indulgent chocolate tarts are filled with two types of chocolate.",
"in_stock": true,
"image": "https://media.istockphoto.com/id/480134303/photo/chocolate-tart.jpg?b=1&s=170667a&w=0&k=20&c=kT0ucWQBDGmxFMRvhMAQsv6l5jDUORazN8BQN3CUUGQ=",
"category_id":2
},
{
"name": "Baklava",
"price": 10,
"star_rating": 4,
"description": "Layer with nuts and drizzle with honey to make this wonderfully sticky Middle Eastern treat.",
"in_stock": true,
"image": "https://media.istockphoto.com/id/1367685040/photo/traditional-turkish-arabic-sweets-baklava-with-turkish-coffee.jpg?b=1&s=170667a&w=0&k=20&c=WDv2EjogNxFU3I3dt22BS9P3X2Q-rUBYZl4Sbxb_KCM=",
"category_id":2
},
{
"name": "White Chocolate Strawberry Cookies",
"price": 5,
"star_rating": 4,
"description": "These cookies bring together two favorite ingredients: white chocolate and strawberry. They are perfectly sweet and chewy with fun bites of dried strawberry pieces and white chocolate chips.",
"in_stock": true,
"image": "https://images.unsplash.com/photo-1621236378699-8597faf6a176?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8V2hpdGUlMjBDaG9jb2xhdGUlMjBTdHJhd2JlcnJ5JTIwQ29va2llc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
"category_id":3
},
{
"name": "Chocolate Chip Cookies",
"price": 5,
"star_rating": 3,
"description": "You cannot go wrong with the classic chocolate chip cookie. This recipe includes melted butter, more brown sugar than white sugar, and an extra egg yolk for a chewy texture and big chocolate chunks for indulgent flavor.",
"in_stock": true,
"image": "https://media.istockphoto.com/id/1367685040/photo/traditional-turkish-arabic-sweets-baklava-with-turkish-coffee.jpg?b=1&s=170667a&w=0&k=20&c=WDv2EjogNxFU3I3dt22BS9P3X2Q-rUBYZl4Sbxb_KCM=",
"category_id":3
},
{
"name": "Gingerbread Cookies",
"price": 5,
"star_rating": 3,
"description": "They are the quintessential Christmas cookie, but gingerbread cookies are delicious anytime. With tasty warming spices, including ginger, cinnamon, ginger, and cloves, they are simply delicious and make your house smell amazing.",
"in_stock": false,
"image": "https://plus.unsplash.com/premium_photo-1669831178183-44b4829039d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2luZ2VyYnJlYWQlMjBjb29raWVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
"category_id":3
}
]
)

#users
3.times do
    User.create(
        username: Faker::Internet.username,
        email: Faker::Internet.email,
        password: Faker::Internet.password,
        image_url: Faker::LoremFlickr.image
    )
end

users = User.all
# carts
user = users.uniq.sample
3.times do
 Cart.create(
    total_price: 0,
    subtotals: 0,
    user_id: user.id,
    quantity: 1,
    food_id: food.id
 )
end


foods = Food.all
users = User.all
carts = Cart.all
# orders
food = foods.uniq.sample
user = users.uniq.sample
cart = carts.uniq.sample

5.times do
   order = Order.create(
        price: food.price,
        quantity: 1,
        food_id: food.id,
        user_id: user.id,
        cart_id: cart.id
    )
end



puts "done seeding."
 