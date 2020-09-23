<?php
  session_start();

  if(!(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] = "ok")) {
    header("Location: login.php");
    exit;
    }
    else{
        include 'partial/_dbconnect.php';
        if(isset($_POST['submit'])){
            $bid = base64_decode($_GET['id']);

            $filename = $_FILES["xyz"]["name"]; 
            $tempname = $_FILES["xyz"]["tmp_name"];     
            $folder = "imageupload/".$filename; 

            $blog_title = $_POST['blog_title'];
            $blog_title = str_replace("'","\'",$blog_title);
            $srt_dec = $_POST['blog_title'];
            $srt_dec = str_replace("'","\'",$srt_dec);
            $blog = $_POST['blog'];
            $blog = str_replace("'","\'",$blog);
            $date = date('Y-m-d H:i:s');

            $sql = "UPDATE `blog` SET `img_file`='$filename', `blog_title`='$blog_title', `srt_dec`='$srt_dec', `blog`='$blog', `date`='$date' WHERE `id` = '$bid'";
            $result = mysqli_query($conn, $sql);
            
            if ($result == 1){
                echo 'done';
                header("location:dashboard.php");
            }
            else{
                echo "error";
            }
        }
    }

    
?>