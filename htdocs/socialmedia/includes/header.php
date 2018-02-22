<?php 
require 'config/config.php'; 

if (isset($_SESSION['username'])){
	$userLoggedIn = $_SESSION['username'];
}
else{
	header("Location: register.php");
 ?>
}
}

<!DOCTYPE html>
<html>
<head>
	<title>Welcome to SocialGroup</title>
</head>
<body>