<?php
class Message {
	private $user_obj;
	private $con;
	
	public function __construct($con, $user){
		$this->con = $con; //reference class variables 
		$this->user_obj = new User($con, $user);
	}
		

}
?>