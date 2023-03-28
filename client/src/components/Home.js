import React, { useState, useEffect } from 'react';
import axios from 'axios';

const Home = () => {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    const fetchProducts = async () => {
      const res = await axios.get('https://your-api-url.com/products');
      setProducts(res.data);
    };

    fetchProducts();
  }, []);

  return (
    <div>
      <h1>Products</h1>
      {products.map((product) => (
        <div key={product.id}>
          <h2>{product.name}</h2>
          <p>{product.description}</p>
          <p>{product.price}</p>
          <button>Add to Cart</button>
        </div>
      ))}
    </div>
  );
};

export default Home;
