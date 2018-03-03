<?php
class Post {
	private $user_obj;
	private $con;
	
	public function __construct($con, $user){
		$this->con = $con; //reference class variables 
		$this->user_obj = new User($con, $user);
	}
		
	public function submitPost($body, $user_to){
				$body = strip_tags($body); //removes html tags
				$body = mysqli_real_escape_string($this->con, $body); //Escapes single quote, so query does not act on it.
				$check_empty = preg_replace('/\s+/', '', $body); //Deletes all spaces
				
				if($check_empty != ""){
					
			
					//Current date and time
					$date_added = date("Y-m-d H:i:s");
					//Get Username
					$added_by = $this->user_obj->getUsername();
					
					//If user is on own profile, user_to is 'none'
					if($user_to == $added_by){
						$user_to = "none";
					}
					
					//Insert post
					$query = mysqli_query($this->con, "INSERT INTO posts VALUES('', '$body', '$added_by', '$user_to', '$date_added', 'no', 'no', '0')");
					$returned_id = mysqli_insert_id($this->con);
					
					//Insert notification
					
					//Update post count for user
					$num_posts = $this->user_obj->getNumPosts();
					$num_posts++;
					$update_query = mysqli_query($this->con, "UPDATE users SET num_posts='$num_posts' WHERE username='$added_by'");
				}
				
				
		
	}


	public function loadPostsFriends($data, $limit){
		
		$page = $data['page'];
		$userLoggedIn = $this->user_obj->getUsername();		
		
		if($page == 1) //no posts have been loaded
			$start = 0; //if its the first set of posts loaded start at zero element
		else
			$start = ($page - 1) * $limit; //if posts have been loaded, then start at page -1 times the limit, which is 10 
		
		
		$str = ""; //String to return
		$data_query = mysqli_query($this->con, "SELECT * FROM posts WHERE deleted='no' ORDER BY id DESC");
		
		if(mysqli_num_rows($data_query) > 0) {
			
				$num_iterations = 0; //Number of results checked (not necssarily posted)
				$count = 1; //How many results loaded 
				
			
				while($row = mysqli_fetch_array($data_query)){
					$id = $row['id'];
					$body = $row['body'];
					$added_by = $row['added_by'];
					$date_time = $row['date_added'];

					//Prepare user_to string so it can be included even if not posted to a user
					if($row['user_to'] == "none"){
						$user_to = "";
					}
					else {
						$user_to_obj = new User($this->con, $row['user_to']);
						$user_to_name = $user_to_obj->getFirstAndLastName();
						$user_to = "to <a href='" . $row['uesr_to'] . "'>" . $user_to_name . "</a>"; 
							//return a link to whoever the user is, to the profile page  and show first and last name.
					}

					//Check if user who posted, has their account closed
					$added_by_obj = new User($this->con, $added_by);
					if($added_by_obj->isClosed()){
						continue; 
					}
					
					if($num_iterations++ < $start)
						continue; //iterating through posts that have already been loaded.
						
					
					//Once 10 posts have been loaded, break
					if($count > $limit) {
						break;
					}
					else {
						$count++;
					}

					$user_details_query = mysqli_query($this->con, "SELECT first_name, last_name, profile_pic FROM users WHERE username='$added_by'");
					$user_row = mysqli_fetch_array($user_details_query);
					$first_name = $user_row['first_name'];
					$last_name = $user_row['last_name'];
					$profile_pic = $user_row['profile_pic'];

					//Timeframe
					$date_time_now = date("Y-m-d H:i:s");
					$start_date = new DateTime($date_time); //Time of post
					$end_date = new DateTime($date_time_now); //Current time
					$interval = $start_date->diff($end_date);
					//difference between dates
					if($interval->y >=1){
						if($interval == 1)
							$time_messsage = $interval->y . " year ago"; //a year ago
						else
							$time_messsage = $interval->y . " year ago"; //1+ year ago
					}
					//if it at least a month old, check how many days it is the ncheck how many months it is.
					else if ($interval->m >=1){
						if($interval->d == 0){
							$days = " ago";
						}
						else if ($interval->d == 1){
							$days = $interval->d . " day ago";
						}
						else{
							$days = $interval->d . " days ago";
						}

						if($interval-> m >=1){
							$time_message = $interval->m. " month". $days;
						}
						else{
								$time_message = $interval->m. " months". $days;
						}
						//e.g. 1 month 1 day ago
						// 	   1 month and 3 days ago
					}
					else if($interval->d >= 1) {
						if ($interval->d == 1){
								$time_message = "Yesterday";
							}
							else{
								$time_message = $interval->d . " days ago";
							}	
					}
					else if($interval->h >=1){
						if ($interval->h == 1){
							$time_message = $interval->h . " hour ago";
						}
						else{
							$time_message = $interval->h . " hours ago";
						}
					}

					else if($interval->i >=1){
						if ($interval->i == 1){
							$time_message = $interval->i . " minute ago";
						}
						else{
							$time_message = $interval->i . " minutes ago";
						}
					}

					else{
						if($interval->s <30){
							$time_message = " Just now";
						}
						else{
							$time_message = $interval->s . " seconds ago";
						}
					}

					$str .= "<div class='status_post'>
								   <div class='post_profile_pic'>
										  <img src='$profile_pic' width='50'>
								   </div>
								   <div class='posted_by' style='color:#ACACAC;'>
										<a href='$added_by'> $first_name $last_name </a> $user_to &nbsp;&nbsp;&nbsp;&nbsp;$time_message;
										</div>
										<div id ='post_body'>
											$body
											<br>
										</div>

							</div>
							<hr>";   

				}
			
				if($count > $limit)
					$str .="<input type='hidden' class='nextPage' value='" . ($page + 1) . "'><input type='hidden' class='noMorePosts' value='false'>";
				else
					$str .="<input type='hidden' class='noMorePosts' value='true'><p style='text-align: centre;'> No more posts to show! </p>";
			}
		echo $str;
	}
}
?>