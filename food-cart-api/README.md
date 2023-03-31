# FOOD CART API
For this project, you must:

Create a Rails API backend.
Have at least four resources (four or more DB tables).


Project Guidelines
Your project should conform to the following set of guidelines:

Models
You need to create the following relationships:

- A `food` has many `carts` through `orders`
- A `carts` has many `foods` through `orders`
- A `orders` belongs to a `food` and belongs to a `cart`
- A `user` has many `carts`
- A `category` has many `foods`

Start by creating the models and migrations for the following database tables:

![alt text](/food-cart-api/ecommerce.png))



### Project setup
In order to use this repository, you need the following:
* Operating System (Windows 10+, ubuntu 20.04, or MacOS X 10.7+)
* An account on Postman API Platform. CLICK HERE TO CREATE ONE
* RAM >= 4GB
* Free Space >= 2GB

1. Fork and clone the repository.
2. Ensure the ruby gems are setup in your machine
```
bundle install
```
3. Perform any pending database migrations and seed data
```
rails db:migrate db:seed
```
4. Make sure no other application is using PORT 3000 and run the application
```
rails s
```
5. Using your preferred API testing platform (Postman, ThunderClient, etc), proceed to test the various routes available to the API. This will be your base URL:
```
http://localhost:3000

```
### Deployment link


### Validations
Add validations to the `Order` model:


- `quantity`, presence: true, numericality: greater_than: 0 
- `price`, presence: true, numericality:  greater_than: 0 
    

Add validations to the `User` model:


- validates `username` length:  minimum: 5, maximum: 8 ,
         `uniqueness`: true, 
         `presence`: true
   

- validates `email`, uniqueness: true,  presence: true

   

### Routes
Set up the following routes. Make sure to return JSON data in the format
specified along with the appropriate HTTP verb.

GET /foods
Return JSON data in the format below:
```
[  
{
"id": 1,
"name": "Red Velvet cake",
"price": 20,
"image": "https://images.unsplash.com/photo-1586788680434-30d324b2d46f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVkJTIwdmVsdmV0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
"in_stock": true,
"description": "Red velvet cake has endured as one of the most popular cakes in the United States.Cake's name is a descriptor of its soft, velvety texture.",
"star_rating": 4,
"category_id": 1
},
{
"id": 2,
"name": "Black Forest cake",
"price": 25,
"image": "https://media.istockphoto.com/id/1327824483/photo/image-of-sliced-black-forest-gateau-with-piped-whipped-cream-rosettes-with-morello-cherries.jpg?b=1&s=170667a&w=0&k=20&c=PeLWsfUyUe3mliVIV1tPvbQpQmC0u_pge8kp5eFeWro=",
"in_stock": true,
"description": "Typically, Black Forest cake is made by soaking the chocolate sponge in sugar syrup flavored with cherry brandy and topped with whipped cream.",
"star_rating": 4,
"category_id": 1
}
]
```

GET /foods/:id
If the `Food` exists, return JSON data in the format below:

```
[
    {
"id": 1,
"name": "Red Velvet cake",
"price": 20,
"image": "https://images.unsplash.com/photo-1586788680434-30d324b2d46f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmVkJTIwdmVsdmV0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
"in_stock": true,
"description": "Red velvet cake has endured as one of the most popular cakes in the United States.Cake's name is a descriptor of its soft, velvety texture.",
"star_rating": 4,
"category_id": 1
}
]
```

If the `Food` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

{   "error": "Food not found" }

 GET /users
Return JSON data in the format below:

```
[
{
"id": 1,
"username": "jeanelle",
"email": "genia@reilly-mccullough.io"
}
]
```

 GET /users/:id
If the `User` exists, return JSON data in the format below:

```
{
"id": 1,
"username": "jeanelle",
"email": "genia@reilly-mccullough.io"
}
```

If the `Power` exists and is updated successfully (passes validations), update
its description and return JSON data in the format below:

```
{
  "id": 1,
  "name": "super strength",
  "description": "Updated description"
}
```

 POST /orders
This route should create a new `Order` that is associated with an
existing `Food` and `Cart`. It should accept an object with the following
properties in the body of the request:

```
{
"food_id": 1,
"quantity": 2,
"price":20,
"cart_id":1,
"user_id":1
  
}
```

If the `Order` is created successfully, send back a response with the data with status 201

If the `HeroPower` is **not** created successfully, return the following
JSON data, along with the appropriate HTTP status code:

```
{
  "errors": ["validation errors"]
}
```
## Authors
Project contributed to and maintained by:
- [Joy Cherotich](https://github.com/joycherotich) 
- [Victor Kariuki](https://github.com/Victorprinz) 
- [Cindy Misoi](https://github.com/CindyMisoi) 
- [Zaki Mathu](https://github.com/OyakiMasu) 



## License

### ISC License (ISC)

[![License: ICL](https://img.shields.io/badge/License-ISC-blue.svg)](https://opensource.org/licenses/ISC)
