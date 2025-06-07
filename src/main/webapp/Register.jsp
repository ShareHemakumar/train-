<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration - Railway Crossing</title>
    <link rel="stylesheet" href="./mystyleregister.css">
</head>

<body>
    <div>
        <h1>Railway Crossing</h1>
        <p>User Registration</p>

        <form action="Validate.jsp" method="post">
            Enter Name: <br/>
            <input type="text" placeholder="john peterson" name="name" required/><br/><br/>

            Enter Email: <br/>
            <input type="email" placeholder="abc@example.com" name="email" required/><br/><br/>

            Enter Password: <br/>
            <input type="password" placeholder="********" name="pass" required/><br/><br/>

            <!-- Hidden input to automatically set user type -->
            <input type="hidden" name="type" value="user"/>

            <button type="submit">Register</button>
        </form>

        <p class="signin-link">Already have an account? <a href="Login.jsp">Sign in Instead</a></p>
    </div>
</body>
</html>
