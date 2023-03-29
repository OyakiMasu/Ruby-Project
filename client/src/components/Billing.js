import React, { useState } from 'react';

const Billing = (props) => {
  const [cardNumber, setCardNumber] = useState('');
  const [tillNumber, setTillNumber] = useState('');
  const [bankAccount, setBankAccount] = useState('');

  // Extract the total price from the URL query parameter
  const searchParams = new URLSearchParams(props.location.search);
  const total = searchParams.get('total');

  const handlePayment = () => {
    // Code to handle the payment goes here
  };

  return (
    <div>
      <h1>Billing</h1>
      <h2>Total: {total}</h2>
      <form onSubmit={handlePayment}>
        <label>
          Card Number:
          <input type="text" value={cardNumber} onChange={(e) => setCardNumber(e.target.value)} />
        </label>
        <br />
        <label>
          Till Number:
          <input type="text" value={tillNumber} onChange={(e) => setTillNumber(e.target.value)} />
        </label>
        <br />
        <label>
          Bank Account:
          <input type="text" value={bankAccount} onChange={(e) => setBankAccount(e.target.value)} />
        </label>
        <br />
        <button type="submit">Pay Now</button>
      </form>
    </div>
  );
};

export default Billing;
