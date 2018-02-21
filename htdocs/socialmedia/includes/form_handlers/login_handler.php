<?php

if(isset($_POST['login_button'])){
	
	$email = filter_var($_POST['log_email'], FILTER_SANITIZE_EMAIL); //Sanitize email

	$_SESSION['log_email']=$email; //Store email into seesion variable

	$passwordr = md5($_POST['log_password']); //Get password

	$check_database_query = mysqli($con,"SELECT * FROM users WHERE email =' $email' AND password= '$password'");
	$check_login_query = mysqli_num_rows($check_database_query);

	if($check_login_query == 1){
		$row = mysqli_fetch_array($check_database_query);
		$username = $row['username'];

		//find a result where the email is equal to email that is entered and user closed is equal to yes. If it finds one, then update it and set user closed back to no. 
		$user_closed_query = mysqli_query($con, "SELECT * FROM users WHERE email='$email' AND user_closed='yes'");
		if(mysqli_num_rows($user_closed_query)==1){
				$reopen_account = mysqli_query($con, "UPDATE users SET user_closed='no' WHERE email='$email'");
		}

		//check to see if the username is not null, if is is then user is logged in
		$_SESSION['username'] = $username;
		header("Location: index.php");
		exit();

	}

	else {
		array_push($error_array, "Email or password was incorrect<br>");

	}

}

?>
