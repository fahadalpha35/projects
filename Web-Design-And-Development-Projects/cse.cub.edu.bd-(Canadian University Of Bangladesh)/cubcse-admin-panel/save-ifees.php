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

  $description1 = mysqli_real_escape_string($connection, $_POST['postdesc1']);
  $description2 = mysqli_real_escape_string($connection, $_POST['postdesc2']);
  $description3 = mysqli_real_escape_string($connection, $_POST['postdesc3']);
  $description4 = mysqli_real_escape_string($connection, $_POST['postdesc4']);
  $description5 = mysqli_real_escape_string($connection, $_POST['postdesc5']);
  $description6 = mysqli_real_escape_string($connection, $_POST['postdesc6']);
  $description7 = mysqli_real_escape_string($connection, $_POST['postdesc7']);
  $description8 = mysqli_real_escape_string($connection, $_POST['postdesc8']);
  $description9 = mysqli_real_escape_string($connection, $_POST['postdesc9']);
  $description10 = mysqli_real_escape_string($connection, $_POST['postdesc10']);
  $description11 = mysqli_real_escape_string($connection, $_POST['postdesc11']);
  $description12 = mysqli_real_escape_string($connection, $_POST['postdesc12']);
  $description13 = mysqli_real_escape_string($connection, $_POST['postdesc13']);
  $category = mysqli_real_escape_string($connection, $_POST['category']);
  $date = date("d M, Y");
  $author = $_SESSION['user_id'];

  $sql = "INSERT INTO ifees(description1,description2,description3,description4,description5,description6,description7,description8,description9,description10,description11,description12,description13,category,ifees_date,author)


          VALUES('{$description1}','{$description2}','{$description3}','{$description4}','{$description5}','{$description6}','{$description7}','{$description8}','{$description9}','{$description10}','{$description11}','{$description12}','{$description13}',{$category},'{$date}',{$author});";

  $sql .= "UPDATE category SET post = post + 1 WHERE category_id = {$category}";

  if(mysqli_multi_query($connection, $sql)){
    header("location: fees.php");
  }else{
    echo "<div class='alert alert-danger'>Query Failed.</div>";
  }

?>
