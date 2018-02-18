<?php 
session_start();
$con = mysqli_connect("localhost","root","","SocialGroup"); //connection varaible
if(mysqli_connect_errno())
{
	echo "Failed to connect".mysqli_connect_errno();
}
//Declaring varaibles to prevent errors
$fname = ""; //First name
$lname = ""; //Last name
$em = ""; //email
$em2 = ""; //email2
$password = ""; //password
$password2 = ""; //password2
$date = ""; //sign up date
$error_array = ""; //Holds error messages


?>

<html>
<head>
	<title>Welcome to Social Group</title>
</head>
<body>
	<form action= "register.php" method="POST">
		<input type="text" name="reg_fname" placeholder="First Name" required>
		<br>
		<input type="text" name="reg_lname" placeholder="Last Name" required>
		<br>
		<input type="text" name="reg_email" placeholder="Email" required>
		<br>
		<input type="text" name="reg_email2" placeholder="Confirm Email" required>
		<br>
		<input type="text" name="reg_password" placeholder="Password" required>
		<br>
		<input type="text" name="reg_password2" placeholder="Confirm Password" required>
		<br>
		<input type="submit" name="register_button" value= "Register">
	</form>
</body>
</html>