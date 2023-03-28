import React from 'react';
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
              <span className="badge">2</span>
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
