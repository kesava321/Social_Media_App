<?php
include("includes/header.php");

$message_obj = new Message($con, $userLoggedIn);

if(isset($_GET['u']))
	$user_to = $_GET['u'];
else {
	$user_to = $message_obj->getMostRecentUser(); //Retrieve most recent user that user has had an interaction with
	if($user_to == false)
		$user_to = 'new';

}
?>