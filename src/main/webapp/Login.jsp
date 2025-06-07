<html>

<head>
<link rel="stylesheet" href="./mystyle.css"></link>
</head>

<body>
	<div>	
		<h1>Railway Crossing</h1>	
		
		<p>Select Login</p>
		<form action="CheckLogin.jsp">
		
		
		
		<label><input type="radio" name="user" value="admin"> Admin</label>
		<label><input type="radio" name="user" value="user"> User</label>
		<br/><br/>

		Enter Email : <br/>		
		<input type="email" placeholder="abc@example.com" name="email"/><br/><br/>		
		Enter password : <br/>		
		<input type="password" placeholder="********" name="pass"/><br/><br/>		
		<button type="submit">Login</button>		
		</form>
		<p class="signin-link">Don't have account? <a href="Register.jsp">Create New Account</a></p>	
	</div>
</body>

</html>