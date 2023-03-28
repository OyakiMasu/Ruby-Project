import React, { useState } from 'react';

const Billing = ({ total }) => {
  const [cardNumber, setCardNumber] = useState('');
  const [tillNumber, setTillNumber] = useState('');
  const [bankAccount, setBankAccount] = useState('');

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
