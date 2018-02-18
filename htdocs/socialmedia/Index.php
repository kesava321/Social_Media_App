<?php 
$con = mysqli_connect("localhost","root","","SocialGroup"); //connection varaible
if(mysqli_connect_errno())
{
	echo "Failed to connect".mysqli_connect_errno();
}

$query = mysqli_query($con, "INSERT INTO test VALUES ('1', 'Kesava')");

 ?>

<!DOCTYPE html>
<html>
<head>
	<title>SocialGroup</title>
</head>
<body>
Secure connection established!!!
</body>
</html>