puts "seeding data..."
# images
# foods
5.times do
    Food.create(
        name: Faker::Food.dish,
        price: Faker::Number.positive,
        star_rating: Faker::Number.positive,
        description: Faker::Lorem.sentence,
        in_stock: Faker::Boolean.boolean,
        image: Faker::LoremFlickr.image
    )
end
#users
5.times do
    User.create(
        username: Faker::Internet.username,
        email: Faker::Internet.email,
        password_digest: Faker::Internet.password,
        image_url: Faker::LoremFlickr.image
    )
end

# carts
5.times do
    Cart.create(
        total_quantity: 0,
        total_price: 0
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
    Order.create(
        price: Faker::Number.positive,
        food_id: food.id,
        user_id: user.id,
        quantity: 1,
        cart_id: cart.id
    )
end


puts "done seeding."
 