import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Navbar from './Navbar';

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

  return (
    <div>
      <Navbar />
      <h1>Products</h1>
      {products && products.length > 0 ? (
        products.map((product) => (
          <div key={product.id}>
            <h2>{product.name}</h2>
            <p>{product.description}</p>
            <p>{product.price}</p>
            <button>Add to Cart</button>
          </div>
        ))
      ) : (
        <p>Loading...</p>
      )}
    </div>
  );
};

export default Home;
