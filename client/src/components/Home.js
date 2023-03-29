import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './Home.css';
import Navbar from './Navbar';
import { Link } from 'react-router-dom';
import Rating from 'react-rating';

const Home = () => {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    const fetchProducts = async () => {
      try {
        const res = await axios.get('https://vickyprinz.github.io/db.json');
        const productsWithRating = res.data.cakes.map((product) => ({ ...product, rating: 0 }));
        setProducts(productsWithRating);
        console.log(productsWithRating); // to check if the data is received properly
      } catch (error) {
        console.error(error);
      }
    };

    fetchProducts();
  }, []);

  const handleAddToCart = (product) => {
    const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
    const newCartItem = {
      ...product,
      rating: 0,
    };
    cartItems.push(newCartItem);
    localStorage.setItem('cartItems', JSON.stringify(cartItems));
    const cartCount = cartItems.length;
    localStorage.setItem('cartCount', cartCount);
  };

  return (
    <div className="container">
      <Navbar />
      <h1>Best Seller</h1>
      <div className="row">
        {products && products.length > 0 ? (
          products.map((product) => (
            <div className="col-lg-4 col-md-6 mb-4" key={product.id}>
              <div className="card">
                <img className="card-img-top" src={product.image} alt="product img" />
                <div className="card-body">
                  <h5 className="card-title">{product.name}</h5>
                  <p className="card-text">{product.description}</p>
                  <p className="card-text">${product.price}</p>
                  <Rating
                    initialRating={product.rating}
                    emptySymbol="fa fa-star-o fa-lg"
                    fullSymbol="fa fa-star fa-lg"
                    onClick={(value) => {
                      product.rating = value;
                      localStorage.setItem('cartItems', JSON.stringify(products));
                    }}
                  />
                  <button className="btn btn-primary" onClick={() => handleAddToCart(product)}>
                    Add to Cart
                  </button>
                </div>
              </div>
            </div>
          ))
        ) : (
          <p>Loading...</p>
        )}
      </div>
      <div>
        <h1>Flash Sale</h1>
        <div className="row">
          {products && products.length > 0 ? (
            products.map((product) => (
              <div className="col-lg-4 col-md-6 mb-4" key={product.id}>
                <div className="card">
                  <img className="card-img-top" src={product.image} alt="product img" />
                  <div className="card-body">
                    <h5 className="card-title">{product
.name}</h5>
              <p className="card-text">{product.description}</p>
              <p className="card-text">${product.price}</p>
              <button className="btn btn-primary" onClick={() => handleAddToCart(product)}>Add to Cart</button>
            </div>
          </div>
        </div>
      ))
    ) : (
      <p>Loading...</p>
    )}
  </div>
</div>

<div>
  <div className="text-center">
    <Link to="/cart">
      <button className="btn btn-primary">View Cart</button>
    </Link>
  </div>
</div>
</div>
  );
};

export default Home;
