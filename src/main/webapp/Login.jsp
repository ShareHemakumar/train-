<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="./mystyleregister.css" />
  <title>Railway User Login</title>
</head>
<body>
  <div class="register-form">
    <h2>Railway Crossing </h2>
    
    <form action="CheckLogin.jsp">
      <div class="form-group">
        <label for="email">Enter Email</label>
        <input type="email" id="email" name="email" placeholder="abc@example.com" />
      </div>

      <div class="form-group">
        <label for="pass">Enter Password</label>
        <input type="password" id="pass" name="pass" placeholder="********" />
      </div>
       <div class="form-group">
        <label><input type="radio" name="user" value="admin" /> Admin</label>
        <label><input type="radio" name="user" value="user" /> User</label>
      </div>

      <button type="submit">Login</button>
    </form>

    <p class="signin-link">
      Don't have an account? <a href="Register.jsp">Create New Account</a>
    </p>
  </div>
</body>
</html>
