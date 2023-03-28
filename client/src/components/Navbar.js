import React from 'react';
import { Link } from 'react-router-dom';

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
    <nav>
      <ul>
        <li>
          <Link to="/login">Log out</Link>
        </li>
        <li>
          <Link to="/cart">Cart</Link>
        </li>
      </ul>
      <SearchBar />
    </nav>
  );
};

export default Navbar;
