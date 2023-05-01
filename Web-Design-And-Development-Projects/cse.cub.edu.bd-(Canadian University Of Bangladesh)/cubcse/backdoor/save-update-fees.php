<?php
include "config.php";

if(empty($_FILES['new-image']['name'])){

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

$query = "UPDATE fees SET 
        description1='{$_POST["postdesc1"]}',
		description2='{$_POST["postdesc2"]}',
		description3='{$_POST["postdesc3"]}',
		description4='{$_POST["postdesc4"]}',
		description5='{$_POST["postdesc5"]}',
		description6='{$_POST["postdesc6"]}',
		description7='{$_POST["postdesc7"]}',
		description8='{$_POST["postdesc8"]}',
		description9='{$_POST["postdesc9"]}',
		description10='{$_POST["postdesc10"]}',
        category={$_POST["category"]} 
        WHERE fees_id={$_POST["fees_id"]}; ";

if($_POST['old_category'] != $_POST["category"] ){
  $query .= "UPDATE category SET post= post - 1 WHERE category_id = {$_POST['old_category']};";
  $query .= "UPDATE category SET post= post + 1 WHERE category_id = {$_POST["category"]};";
}

$result = mysqli_multi_query($connection,$query);

if($result){
  header("location: ../backdoor/fees.php");
}else{
  echo "Query Failed";
}




?>
