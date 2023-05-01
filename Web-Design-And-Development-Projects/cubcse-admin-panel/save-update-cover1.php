<?php
include "config.php";

if(empty($_FILES['new-image']['name'])){
  $new_name = $_POST['old_image'];
}else{
  $errors = array();

  $file_name = $_FILES['new-image']['name'];
  $file_size = $_FILES['new-image']['size'];
  $file_tmp = $_FILES['new-image']['tmp_name'];
  $file_type = $_FILES['new-image']['type'];
  $tmp = explode('.',$file_name);

  $file_extension = end($tmp);

  $extensions = array("jpeg","jpg","png");

  if(in_array($file_extension,$extensions) === false)
  {
    $errors[] = "This extension file not allowed, Please choose a JPG or PNG file.";
  }

  if($file_size > 2097152){
    $errors[] = "File size must be 2mb or lower.";
  }

  if($file_size > 2097152){
    $errors[] = "File size must be 2mb or lower.";
  }
  $new_name = time(). "-".basename($file_name);
  $target = "../backdoor/upload/".$new_name;
  $image_name = $new_name;
  if(empty($errors) == true){
    move_uploaded_file($file_tmp,$target);
  }else{
    print_r($errors);
    die();
  }
}

$query = "UPDATE cover1 SET 
        category={$_POST["category"]},
        cover1_img='{$image_name}' 
        WHERE cover1_id={$_POST["cover1_id"]}; ";

if($_POST['old_category'] != $_POST["category"] ){
  $query .= "UPDATE category SET post= post - 1 WHERE category_id = {$_POST['old_category']};";
  $query .= "UPDATE category SET post= post + 1 WHERE category_id = {$_POST["category"]};";
}

$result = mysqli_multi_query($connection,$query);

if($result){
  header("location: ../backdoor/cover1.php");
}else{
  echo "Query Failed";
}




?>
