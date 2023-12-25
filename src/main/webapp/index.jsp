<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h1>Registration Page</h1>
  <form id="registrationForm" action="RegistrationServlet" method="post" onsubmit="return validateForm()">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br><br>
    
    <label for="rollNo">Roll No:</label>
    <input type="text" id="rollNo" name="rollNo" required><br><br>
    
    Date Of Birth:
    <input type="text" id="dob" name="dob" required><br><br>
    
    Gender:<br>
    <input type="radio" id="gender" name="gender" required value="Male">Male
    <input type="radio" id="gender" name="gender" required value="Female">Female<br><br>
    
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br><br>
    
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br><br>
    
    <input type="submit" value="Submit">
  </form>

  <p id="registrationMessage"></p>

  <script>
    function validateForm() {
      // Validate email and password using regular expressions
      // Add your validation logic here, for instance:
      let emailFormat = /\S+@\S+\.\S+/;
      let passwordFormat = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
      let emailInput = document.getElementById('email').value;
      let passwordInput = document.getElementById('password').value;
	  let status=true;
      if (!emailFormat.test(emailInput)) {
        alert("Invalid email format");
        status=false;
      }

      if (!passwordFormat.test(passwordInput)) {
        alert("Password must contain at least 8 characters, including one uppercase letter, one lowercase letter, and one number.");
        status=false;
      }
      return status;
    }
  </script>
</body>
</html>