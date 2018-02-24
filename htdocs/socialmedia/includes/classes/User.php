<?php
class User {
	private $user;
	private $con;
	
	public function __construct($con, $user){
		$this->con = $con; //reference class variables 
		$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$user'"); //return all inform form the user table for this user
		$this->user = mysqli_fetch_array($user_details_query); //return this result as an array 
	}
		
			public function getFirstAndLastName(){
				$username = $this->user['username'];
				$query = mysqli_query($this->con, "SELECT first_name, last_name FROM users WHERE username='$username'");
				$row = mysqli_fetch_Array($query);
				return $row['first_name'] . " " . $row['last_name'];
		
	}
}

?>