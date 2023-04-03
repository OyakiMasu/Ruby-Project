import React from 'react';
import { Link } from 'react-router-dom';

const CategoryList = () => {
  return (
    <div>
      <h2>Categories</h2>
      <ul>
        <li>
          <Link to="/category/bread">Pastries</Link>
        </li>
        <li>
          <Link to="/category/cakes">Cakes</Link>
        </li>
        <li>
          <Link to="/category/pastry">Cookies</Link>
        </li>
      </ul>
    </div>
  );
};

export default CategoryList;
