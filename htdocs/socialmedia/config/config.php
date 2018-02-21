<?php 

ob_start(); //Turns on output buffering
session_start();

//sets default timezone to London. On status update can see how long ago message was posted. 
$timezone = date_default_timezone_set("Europe/London");

$con = mysqli_connect("localhost","root","","SocialGroup"); //connection varaible
if(mysqli_connect_errno())
{
	echo "Failed to connect".mysqli_connect_errno();
}

?>
