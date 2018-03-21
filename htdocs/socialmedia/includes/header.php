<?php 
require 'config/config.php'; 
include("includes/classes/User.php");
include("includes/classes/Post.php");
include("includes/classes/Message.php");

if (isset($_SESSION['username'])) {
	$userLoggedIn = $_SESSION['username'];
	$user_details_query = mysqli_query($con, "SELECT * FROM users, news WHERE username='$userLoggedIn'");
	$user = mysqli_fetch_array($user_details_query);
	


} //returns all columns from table for that user as an array
else{
	header("Location: register.php");
}
?>



<html>
<head>
	<title>Welcome to SocialGroup</title>
	
	<!-- Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/socialgroup.js"></script>
	<script src="assets/js/jquery.jcrop.js"></script>
	<script src="assets/js/jcrop_bits.js"></script>


	<!-- allows reuse of existing symbols/buttons -->

	<!-- CSS -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" href="assets/css/jquery.Jcrop.css" type="text/css" />


</head>
<body>

	<div class="top_bar">

		<div class="logo">
			<a href="index.php">Social Group</a>
		</div>

		<nav>
			<a href="<?php echo $userLoggedIn; ?>"> 
				 <?php echo $user['first_name']; ?>	 
			</a>
			<a href="index.php"> 
				<i class="fa fa-home fa-lg"></i> 
			</a>
			<a href="javascript:void(0);" onclick="getDropdownData('<?php echo $userLoggedIn; ?>', 'message')">
				<i class="fa fa-envelope fa-lg"></i>
			</a> 
			<a href="#">
				<i class="fa fa-bell fa-lg"></i> 
			</a>
			<a href="requests.php">
				<i class="fa fa-users fa-lg"></i> 
			</a>
			<a href="#">
				<i class="fa fa-cog fa-lg"></i> 
			</a>
			<a href="includes/handlers/logout.php">
				<i class="fa fa-sign-out-alt fa-lg"></i> 
			</a>
		</nav>

		<div class="dropdown_data_window"></div>
		<input type="hidden" id="dropdown_data_type" value="">

	</div>

	<div class="wrapper">