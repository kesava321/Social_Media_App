<?php 
include("includes/header.php");

if(isset($_POST['post'])){
  //Posting an image 
  $uploadOk = 1;
  $imageName = $_FILES['fileToUpload']['name'];
  $errorMessage = "";

  if($imageName != "") {
    $targetDir = "assets/images/posts/";
    $imageName = $targetDir . uniqid() . basename($imageName); //stops two people from overwritting images when they are uploaded by giving them a unique id
    $imageFileType = pathinfo($imageName, PATHINFO_EXTENSION);

    if($_FILES['fileToUpload']['size'] > 10000000) {
      $errorMessage = "Sorry your file is too large";
      $uploadOk = 0;
    }

    if(strtolower($imageFileType) != "jpeg" && strtolower($imageFileType) != "png" && strtolower($imageFileType) != "jpg") {
      $errorMessage = "Sorry, only jpeg, jpg and png files are allowed";
      $uploadOk = 0;
    }

    if($uploadOk) {
      if(move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $imageName)) {
        //image uploaded okay
      }
      else {
        //image did not upload
        $uploadOk = 0;
      }
    }

  }

  if($uploadOk) {
    $post = new Post($con, $userLoggedIn);
    $post->submitPost($_POST['post_text'], 'none', $imageName);
  }
  else {
    echo "<div style='text-align:center;' class='alert alert-danger'>
        $errorMessage
      </div>";
  }

}


 ?>
 	<div class="user_details column">
 		<a href="<?php echo $userLoggedIn; ?>"> <img src="<?php echo $user['profile_pic']; ?>"> </a>
 		
 		<div class="user_details_left_right">
	 		<a href="<?php echo $userLoggedIn; ?>">
			<?php 
	 		echo $user['first_name'] . " " . $user['last_name'];

	 		?> 
			</a>
			<br>
			<?php echo "Posts: " . $user['num_posts']. "<br>"; 
			echo "Likes: " . $user['num_likes'];
			
			?> 
		</div>

 	</div>

	<div class="main_column column">
		<form class="post_form" action="index.php" method="POST" enctype="multipart/form-data">
      <input type="file" name="fileToUpload" id="fileToUpload">
			<textarea name="post_text" id="post_text" placeholder="What's on your mind?"></textarea>
			<input type="submit" name="post" id="post_button" value="Post"> 
			<hr>

		</form>
	
		
		<div class="posts_area"></div>
		<img id="loading" src="assets/images/icons/loading.gif">
	
	</div>



    
    <div class="trends column">
      <h4>Trending Words:</h4>
      <?php
      $query = mysqli_query($con, "SELECT * FROM trends ORDER BY hits DESC LIMIT 10");

      foreach ($query as $row) {

          $word = $row['title'];
          $word_dot = strlen($word) >= 14 ? "..." : "";

          $trimmed_word = str_split($word,14);
          $trimmed_word = $trimmed_word[0];

          echo "<div style'padding: 1px'>";
          echo $trimmed_word . $word_dot;
          echo "<br></div>";


      }
      ?>
	</div>


	<div class="news_details column">
    <h4>Featured News:</h4>
<?php
if (isset($_POST['mark_fake'])) { //marked as fake
    $news_id = $_POST['news_id'];
    $result = mysqli_query($con, "SELECT * FROM news WHERE id=$news_id");
    $row = mysqli_fetch_array($result);
    $n = $row['fakes'];

    mysqli_query($con, "INSERT INTO fakes (user_id, news_id) VALUES (1, $news_id)");
    mysqli_query($con, "UPDATE news SET fakes=$n+1 WHERE id=$news_id");

    echo $n+1;
    exit();
  }
  if (isset($_POST['mark_real'])) { //marked as real
    $news_id = $_POST['news_id'];
    $result = mysqli_query($con, "SELECT * FROM news WHERE id=$news_id");
    $row = mysqli_fetch_array($result);
    $n = $row['fakes'];

    mysqli_query($con, "DELETE FROM fakes WHERE news_id=$news_id AND user_id=1");
    mysqli_query($con, "UPDATE news SET fakes=$n-1 WHERE id=$news_id");
    
    echo $n-1;
    exit();
  }

  // Retrieve news from the database
  $news = mysqli_query($con, "SELECT * FROM news WHERE fakes<=10 ORDER BY fakes ASC LIMIT 0,5 ");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Mark news article as fake</title>
</head>
<body>
  <!-- display posts gotten from the database  -->
    <?php while ($row = mysqli_fetch_array($news)) { ?>

      <div class="news">
        <?php 

        $news_title = $row['news_title'];
        $news_text = $row['news_text']; 
        $news_link = $row['news_link']; 
        $news_pic = $row['news_pic']; 
        echo "<p> <font color=blue size='4pt'></font> <font color=black size='2pt'><strong>$news_title</strong></font></p>";
        ?><img src="<?php echo $news_pic;?>" style="border-width: 10px; width:100px;"><?php
        echo "<p> <font color=blue size='4pt'></font> <font color=black size='2pt'>$news_text</font></p>";
        echo "<a href='".$news_link."'>Link to News Article</a>";

        ?>

        <div style="padding: 2px; margin-top: 5px;">
        <?php 
          // determine if user has already liked this post
          $results = mysqli_query($con, "SELECT * FROM fakes WHERE news_id=".$row['id']."");

          if (mysqli_num_rows($results)): ?>
            <!-- user already likes post -->
            <span class="unlike fa fa-thumbs-down" data-id="<?php echo $row['id']; ?>"></span> 
            <span class="like fa fa-thumbs-up" data-id="<?php echo $row['id']; ?>"></span> 
          <?php else: ?>
            <!-- user has not yet liked post -->
            <span class="unlike fa fa-thumbs-down" data-id="<?php echo $row['id']; ?>"></span> 
            <span class="like fa fa-thumbs-up" data-id="<?php echo $row['id']; ?>"></span> 
          <?php endif ?>
         
          <span class="likes_count"><?php echo $row['fakes']; ?> Users marked as fake</span>
        </div>
      </div>



    <?php } ?>


<!-- Add Jquery to page -->
<script src="jquery.min.js"></script>
<script>
  $(document).ready(function(){
    //when the user clicks on like/thumbs down button
    //decrement score by 1
    //articles with low score are more genuine 
    $('.like').on('click', function(){
      var news_id = $(this).data('id');
          $news = $(this);

      $.ajax({
        url: 'index.php',
        type: 'post',
        data: {
          'mark_fake': 1,
          'news_id': news_id
        },
        success: function(response){
          $news.parent().find('span.fakes_count').text(response + " fakes");
          $news.addClass('hide');
          $news.siblings().removeClass('hide');
        }
      });
    });

    // when the user clicks on unlike/thumbs up button
    //increment score by 1
    //articles with high score are more fake
    $('.unlike').on('click', function(){
      var news_id = $(this).data('id');
        $news = $(this);

      $.ajax({
        url: 'index.php',
        type: 'post',
        data: {
          'mark_real': 1,
          'news_id': news_id
        },
        success: function(response){
          $news.parent().find('span.fakes_count').text(response + " fakes");
          $news.addClass('hide');
          $news.siblings().removeClass('hide');
        }
      });
    });
  });


	
	


   $(function(){
 
       var userLoggedIn = '<?php echo $userLoggedIn; ?>';
       var inProgress = false;
 
       loadPosts(); //Load first posts
 
       $(window).scroll(function() {
           var bottomElement = $(".status_post").last();
           var noMorePosts = $('.posts_area').find('.noMorePosts').val();
 
           // isElementInViewport uses getBoundingClientRect(), which requires the HTML DOM object, not the jQuery object. The jQuery equivalent is using [0] as shown below.
           if (isElementInView(bottomElement[0]) && noMorePosts == 'false') {
               loadPosts();
           }
       });
 
       function loadPosts() {
           if(inProgress) { //If it is already in the process of loading some posts, just return
               return;
           }
          
           inProgress = true;
           $('#loading').show();
 
           var page = $('.posts_area').find('.nextPage').val() || 1; //If .nextPage couldn't be found, it must not be on the page yet (it must be the first time loading posts), so use the value '1'
 
           $.ajax({
               url: "includes/handlers/ajax_load_posts.php",
               type: "POST",
               data: "page=" + page + "&userLoggedIn=" + userLoggedIn,  //request comes from ajax call
               cache:false,
 
               success: function(response) {
                   $('.posts_area').find('.nextPage').remove(); //Removes current .nextpage
                   $('.posts_area').find('.noMorePosts').remove(); //Removes current .nextpage
                   $('.posts_area').find('.noMorePostsText').remove(); //Removes current .nextpage
 
                   $('#loading').hide();
                   $(".posts_area").append(response);
 
                   inProgress = false;
               }
           });
       }
 
       //Check if the element is in view
       function isElementInView (el) {
             if(el == null) {
                return;
            }
 
           var rect = el.getBoundingClientRect();
 
           return (
               rect.top >= 0 &&
               rect.left >= 0 &&
               rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) && //* or $(window).height()
               rect.right <= (window.innerWidth || document.documentElement.clientWidth) //* or $(window).width()
           );
       }
   });
 
   </script>


 </div>
</body>
</html>