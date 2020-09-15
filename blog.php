<?php

	include 'partial/_dbconnect.php';
	$sql="SELECT * FROM  blog ORDER BY id ASC";
	$result=mysqli_query($conn, $sql);

?>

<?php include("front/headerblog.php"); ?>

<?php include("front/nav.php"); ?>
<!-- blog_main -->
<!-- blog_main -->
<div class="blog_main">
   <div class="container">
      
      <div class="row">
         <div class="col-md-12">
            <div class="titlepage">
               <h2>Our Blogs</h2>
               <span>It is a long established fact that a reader will be distracted by the readable content of a page
               </span>
            </div>
         </div>
      </div>
      <?php while($row = mysqli_fetch_array($result)) { ?>
      <div class="row">
         <div class="col-md-12">
            <div class="our_two_box">
               <div class="row d_flex">

                  <div style=" display: block;margin-left: auto;  margin-right: auto;width: 50%;" class="col-xl-8 col-lg-12 col-md-12 col-sm-12">
                     <div class="our_img">
                        <figure><img src="imageupload/<?php echo $row['img_file']; ?>" alt="#" /></figure>
                     </div>
                  </div>
                  <div class="container">
                     <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="our_text_box">
                           <br>
                           <h3 class="awesome pa_wi"><?php echo $row['blog_title']; ?></h3>
                           <p> 
                              <?php echo $row['srt_dec']; ?>
                           </p><span id="dots">...</span>
                           <!-- <span id="more"> -->
                           <p>
                              <?php echo $row['blog'];?>
                           </p>
                           <!-- </span> <button style="margin-bottom:10px" class="btn btn-primary" onclick="myFunction()"
                              id="myBtn">Read more</button> -->
                           <br>
                           <div class="post_box padding_bottom1">
                              <h4 class="flot_left1">Post By : Blogger </h4>
                              <ul class="like">
                                 <li><a href="#"><img src="images/like.png" alt="#" />Like</a></li>
                                 <li><a href="#"><img src="images/comm.png" alt="#" />Comment</a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>



      </div>
      <?php }?>
   </div>
</div>
   <!-- end blog_main -->

   <script>
      // function myFunction() {
      //    var dots = document.getElementById("dots");
      //    var moreText = document.getElementById("more");
      //    var btnText = document.getElementById("myBtn");

      //   // if (dots.style.display === "none") {
      //       dots.style.display = "inline";
      //       btnText.innerHTML = "Read more";
      //       moreText.style.display = "none";
      //    //} else {
      //       dots.style.display = "none";
      //       btnText.innerHTML = "Read less";
      //       moreText.style.display = "inline"; -->
      //    }
   
      }

   </script>
   <?php include("front/footer.php") ?>