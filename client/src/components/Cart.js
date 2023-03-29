import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import './Cart.css';

const Cart = () => {
  const [cartItems, setCartItems] = useState([]);

  useEffect(() => {
    const items = JSON.parse(localStorage.getItem('cartItems')) || [];
    setCartItems(items);
  }, []);

  const handleRemoveFromCart = (product) => {
    const newCartItems = cartItems.filter((item) => item.id !== product.id);
    setCartItems(newCartItems);
    localStorage.setItem('cartItems', JSON.stringify(newCartItems));
  };

  const totalPrice = cartItems.reduce((acc, item) => acc + item.price, 0);

  const navigate = useNavigate();

  const handleCheckout = () => {
    // Pass the total price as a query parameter to the billing page
    navigate(`/billing?total=${totalPrice}`);
  };

  return (
    <div className="cart-container">
      <h1 className="cart-title">Cart</h1>
      {cartItems.length === 0 ? (
        <p className="cart-empty-message">Your cart is empty</p>
      ) : (
        <div>
          {cartItems.map((item) => (
    <div key={item.id} className="cart-item">
      <img src={item.image} alt={item.name} className="cart-item-image" />
      <div className="cart-item-details">
        <p className="cart-item-name">{item.name}</p>
        <p className="cart-item-price">{`$${item.price}`}</p>
        <button onClick={() => handleRemoveFromCart(item)} className="cart-item-remove">
          Remove
        </button>
      </div>
    </div>
))}

      <p className="cart-total-price">{`Total: $${totalPrice}`}</p>
      <button onClick={handleCheckout} className="cart-checkout">
        Checkout
      </button>
    </div>
  )}
</div>
);
};

export default Cart;