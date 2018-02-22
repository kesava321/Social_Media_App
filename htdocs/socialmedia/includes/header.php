<?php 
require 'config/config.php'; 

if (isset($_SESSION['username'])){
	$userLoggedIn = $_SESSION['username'];
}
else{
	//header("Location: register.php"); //UNCOMMENT LATER
}

?>


<html>
<head>
	<title>Welcome to SocialGroup</title>

	<!-- Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<!-- allows reuse of existing symbols/buttons -->

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/bottstrap.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>

	<div class="top_bar">
		<div class="logo">
			<a href="index.php">Social Group</a>
		</div>

	</div>