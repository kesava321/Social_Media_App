<?php 

require 'config/config.php'; 
require 'includes/form_handlers/register_handler.php';

?>

<html>
<head>
	<title>Welcome to Social Group</title>
</head>
<body>
	<form action= "register.php" method="POST">
		<input type="text" name="reg_fname" placeholder="First Name" value="<?php
		if(isset($_SESSION['reg_fname'])) {
			echo $_SESSION['reg_fname'];
		}
		?>" required>
		<br>
		<?php if (in_array("Your first name must be between 2 and 25 charaters<br>", $error_array)) echo "Your first name must be between 2 and 25 charaters<br>"; ?>

			<input type="text" name="reg_lname" placeholder="Last Name" value="<?php
		if(isset($_SESSION['reg_lname'])) {
			echo $_SESSION['reg_lname'];
		}
		?>" required>
		<br>
			<?php if (in_array("Your last name must be between 2 and 25 charaters<br>", $error_array)) echo "Your last name must be between 2 and 25 charaters<br>"; ?>

			<input type="text" name="reg_email" placeholder="Email" value="<?php
		if(isset($_SESSION['reg_email'])) {
			echo $_SESSION['reg_email'];
		}
		?>" required>
		<br>
			<input type="text" name="reg_email2" placeholder="Confirm Email" value="<?php
		if(isset($_SESSION['reg_email2'])) {
			echo $_SESSION['reg_email2'];
		}
		?>" required>
		<br>
			<?php if (in_array("Email already in use<br>", $error_array)) echo "Email already in use<br>"; 	
			 else if (in_array("Invalid email format<br>", $error_array)) echo "Invalid email format<br>";
			 else if (in_array("Emails don't match<br>", $error_array)) echo "Emails don't match<br>"; ?>

		<input type="text" name="reg_password" placeholder="Password" required>
		<br>
		<input type="text" name="reg_password2" placeholder="Confirm Password" required>
		<br>
		<?php if (in_array("Your passwords do not match<br>", $error_array)) echo "Your passwords do not match<br>"; 	
			 else if (in_array("Your passwrod can only contain english characters or numbers<br>", $error_array)) echo "Your passwrod can only contain english characters or numbers<br>";
			 else if (in_array("Your password must be between 5 and 30 charachters<br>", $error_array)) echo "Your password must be between 5 and 30 charachters<br>"; ?>

		<br>
		<input type="submit" name="register_button" value= "Register">

		<br>
		<?php if (in_array("<span style='color: #14C800;'> Account set up! Please login! <span><br>", $error_array)) echo "<span style='color: #14C800;'> Account set up! Please login! <span><br>"; ?>


	</form>
</body>
</html>