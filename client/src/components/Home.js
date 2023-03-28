import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './Home.css';
import Navbar from './Navbar';
import { Link } from 'react-router-dom';

const Home = () => {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    const fetchProducts = async () => {
      try {
        const res = await axios.get('https://vickyprinz.github.io/db.json');
        setProducts(res.data.cakes);
        console.log(res.data.cakes); // to check if the data is received properly
      } catch (error) {
        console.error(error);
      }
    };

    fetchProducts();
  }, []);

  const handleAddToCart = (product) => {
    const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
    cartItems.push(product);
    localStorage.setItem('cartItems', JSON.stringify(cartItems));
    const cartCount = cartItems.length;
    localStorage.setItem('cartCount', cartCount);
  };
  

  return (
    <div className="container">
      <Navbar />
      <h1>Products</h1>
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
                  <button className="btn btn-primary" onClick={() => handleAddToCart(product)}>Add to Cart</button>
                </div>
              </div>
            </div>
          ))
        ) : (
          <p>Loading...</p>
        )}
      </div>
      <div className="text-center">
        <Link to="/cart">
          <button className="btn btn-primary">View Cart</button>
        </Link>
      </div>
    </div>
  );
};

export default Home;
