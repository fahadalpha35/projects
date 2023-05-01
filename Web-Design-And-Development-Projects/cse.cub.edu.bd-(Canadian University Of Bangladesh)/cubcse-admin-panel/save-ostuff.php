<?php
  include "config.php";
  if(isset($_FILES['fileToUpload'])){
    $errors = array();

    $file_name = $_FILES['fileToUpload']['name'];
    $file_size = $_FILES['fileToUpload']['size'];
    $file_tmp = $_FILES['fileToUpload']['tmp_name'];
    $file_type = $_FILES['fileToUpload']['type'];
    $file_ext = end(explode('.',$file_name));

    $extensions = array("jpeg","jpg","png");

    if(in_array($file_ext,$extensions) === false)
    {
      $errors[] = "This extension file not allowed, Please choose a JPG or PNG file.";
    }

    if($file_size > 2097152){
      $errors[] = "File size must be 2mb or lower.";
    }
    $new_name = time(). "-".basename($file_name);
    $target = "upload/".$new_name;

    if(empty($errors) == true){
      move_uploaded_file($file_tmp,$target);
    }else{
      print_r($errors);
      die();
    }
  }

  session_start();

  $title = mysqli_real_escape_string($connection, $_POST['post_title']);
  $title3 = mysqli_real_escape_string($connection, $_POST['post_title3']);
  $title1 = mysqli_real_escape_string($connection, $_POST['post_title1']);
  $title2 = mysqli_real_escape_string($connection, $_POST['post_title2']);
  $title6 = mysqli_real_escape_string($connection, $_POST['post_title6']);
  $category = mysqli_real_escape_string($connection, $_POST['category']);
  $date = date("d M, Y");
  $author = $_SESSION['user_id'];

  $sql = "INSERT INTO ostuff(title, name, designation, email, category,ostuff_date,author,ostuff_img, position)


          VALUES('{$title}','{$title3}','{$title1}','{$title2}',{$category},'{$date}',{$author},'{$new_name}',{$title6});";

  $sql .= "UPDATE category SET post = post + 1 WHERE category_id = {$category}";

  if(mysqli_multi_query($connection, $sql)){
    header("location: ostuff.php");
  }else{
    echo "<div class='alert alert-danger'>Query Failed.</div>";
  }

?>
