import React, { useState } from "react";
import styled, { keyframes } from "styled-components";
import { useNavigate, Link } from "react-router-dom";

const slideIn = keyframes`
  from {
    transform: translateX(100%);
    opacity: 0;
  }
  to {
    transform: translateX(0);
    opacity: 1;
  }
`;

const slideOut = keyframes`
  from {
    transform: translateX(0);
    opacity: 1;
  }
  to {
    transform: translateX(-100%);
    opacity: 0;
  }
`;

const Container = styled.div`
  max-width: 600px;
  margin: 0 auto;
  padding: 40px;
  background-color: #fff;
  border-radius: 8px;
  animation: ${slideIn} 0.5s forwards;

  ${({ isHidden }) =>
    isHidden &&
    `
    animation: ${slideOut} 0.5s forwards;
  `}
`;

const Title = styled.h1`
  text-align: center;
  margin-bottom: 40px;
  color: #333;
`;

const Form = styled.form`
  display: flex;
  flex-direction: column;
`;

const Input = styled.input`
  margin-bottom: 20px;
  padding: 10px;
  border: none;
  border-radius: 8px;
  background-color: #f2f2f2;
  font-size: 16px;
`;

const Button = styled.button`
  padding: 10px;
  border: none;
  border-radius: 8px;
  background-color: #4caf50;
  color: #fff;
  font-size: 16px;
  cursor: pointer;
`;

const Message = styled.p`
  margin-top: 20px;
  text-align: center;
  font-size: 16px;
  color: ${({ isError }) => (isError ? "red" : "green")};
`;

const LinkWrapper = styled.div`
  margin-top: 20px;
  text-align: center;
`;

const CustomLink = styled(Link)`
  color: #4caf50;
`;

function Login() {
  const [formData, setFormData] = useState({
    email: "",
    password: "",
  });
  const [message, setMessage] = useState("");
  const nav = useNavigate();

  function handleChange(e) {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  }

  function handleSubmit(e) {
    e.preventDefault();
    // validate form data, e.g. check if email and password are not empty
    if (!formData.email || !formData.password) {
      setMessage("Please enter your email and password");
      return;
    }
    // simulate login with hardcoded credentials
    if (formData.email === "user@example.com" && formData.password === "password") {
      nav("/home");
      setMessage("Login successful");
    } else {
      setMessage("Invalid email or password");
    }
  }

  return (
    <Container>
      <Title>Login</Title>
      <Form onSubmit={handleSubmit}>
        <Input
          type="email"
          placeholder="Email Address"
          name="email"
          id="email"
          onChange={handleChange}
          value={formData.email}
        />
        <Input
          type="password"
          placeholder="Password"
          name="password"
          id="password"
          onChange={handleChange}
          value={formData.password}
        />
        <Button type="submit">Login</Button>
      {message && (
        <Message isError={message.startsWith("Invalid")}>
          {message}
        </Message>
      )}
      <LinkWrapper>
        <span>Don't have an account?</span>{" "}
        <CustomLink to="/signup">Register here</CustomLink>
      </LinkWrapper>
    </Form>
  </Container>
);
      }
export default Login;
