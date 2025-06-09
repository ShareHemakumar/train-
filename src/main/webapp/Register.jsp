
<html>
  <head>
    <!-- Import a professional font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./mystyleregister.css" />
    <meta charset="UTF-8" />
    <title>Railway User Register</title>
  </head>
  <body>
    <div class="register-form">
      <h2>Railway Crossing </h2>
      <!-- <p>User Registration</p> -->
      <form action="Validate.jsp">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" name="name" placeholder="Shyam Kumar" />
        </div>

        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="shyam@example.com" />
        </div>

        <div class="form-group">
          <label for="pass">Password</label>
          <input type="password" id="pass" name="pass" placeholder="*****" />
        </div>
        
        <input type="hidden" name="type" value="user"/>

        <button type="submit">Register</button>
      </form>

      <p class="signin-link">
        Already registered? <a href="Login.jsp">Sign in here</a>
      </p>
    </div>
  </body>
</html>
