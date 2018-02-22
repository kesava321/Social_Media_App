<?php 
require 'config/config.php'; 

if (isset($_SESSION['username'])){
	$userLoggedIn = $_SESSION['username'];
}
else{
	header("Location: register.php");
}

?>


<html>
<head>
	<title>Welcome to SocialGroup</title>

	<!-- Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>script> 
	<!-- allows reuse of existing symbols/buttons -->

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/bottstrap.css">
</head>
<body>