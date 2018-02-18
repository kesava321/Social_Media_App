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


if (isset($_POST['register_button'])){

	//Registration form values

	//First name
	$fname = strip_tags($_POST['reg_fname']); //remove html tags
	$fname = str_replace('', '', $fname); //remove spaces
	$fname = ucfirst(strtolower($fname)); //Uppercase first letter
	$_SESSION['reg_fname'] = $fname; //stores first name into session variable

	//Last name
	$lname = strip_tags($_POST['reg_lname']); //remove html tags
	$lname = str_replace('', '', $lname); //remove spaces
	$lname = ucfirst(strtolower($lname)); //Uppercase first letter
	$_SESSION['reg_lname'] = $fname; //stores last name into session variable


	//Email
	$em = strip_tags($_POST['reg_email']); //remove html tags
	$em = str_replace('', '', $em); //remove spaces
	$em = ucfirst(strtolower($em)); //Uppercase first letter
	$_SESSION['reg_email'] = $email; //stores email into session variable


	//Email 2
	$em2 = strip_tags($_POST['reg_email2']); //remove html tags
	$em2 = str_replace('', '', $em2); //remove spaces
	$em2 = ucfirst(strtolower($em2)); //Uppercase first letter
	$_SESSION['reg_email2'] = $email2; //stores email2 into session variable


	//Password
	$password = strip_tags($_POST['reg_password']); //remove html tags
	$password2 = strip_tags($_POST['reg_password2']); //remove html tags

	$date = date ("Y-a-d"); //current date

	if($em == $em2){
		//Check if emial is in valid format
		if(filter_var($em, FILTER_VALIDATE_EMAIL)){
			$em = filter_var($em, FILTER_VALIDATE_EMAIL);

			//Check if email already exsits
			$e_check = mysqli_query($con,"SELECT email FROM users WHERE email='$em'");

			//Count the number of rows returned
			$num_rows = mysqli_num_rows($e_check);

			if ($num_rows >0) {
				echo "Email already in use";
			}

		}
		else{
			echo "Invalid format";
		}

	}
	else {
		echo "Emails don't match";
	}

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