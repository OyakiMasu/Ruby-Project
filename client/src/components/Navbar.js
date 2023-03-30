import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { FaShoppingCart } from 'react-icons/fa';
import './Navbar.css';

const SearchBar = () => {
  return (
    <form>
      <input type="text" placeholder="Search" />
      <button type="submit">Search</button>
    </form>
  );
};

const Navbar = () => {
  const [cartCount, setCartCount] = useState(0);

  useEffect(() => {
    const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
    setCartCount(cartItems.length);
  }, []);

  useEffect(() => {
    localStorage.setItem('cartCount', cartCount);
  }, [cartCount]);

  return (
    <nav className="navbar">
      <ul className="navbar-nav">
        <li className="nav-item">
          <Link className="nav-link" to="/login">Log out</Link>
        </li>
        <li className="nav-item">
          <Link className="nav-link" to="/cart">
            <div className="cart-icon">
              <FaShoppingCart size={24} />
              <span className="badge">{cartCount}</span>
            </div>
          </Link>
        </li>
      </ul>
      <div className="navbar-search">
        <SearchBar />
      </div>
    </nav>
  );
};

export default Navbar;
