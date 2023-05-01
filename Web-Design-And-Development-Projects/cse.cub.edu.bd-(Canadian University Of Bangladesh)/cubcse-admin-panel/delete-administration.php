<?php
  include "config.php";

  $administration_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM administration WHERE admin_id = {$administration_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['admin_img']);


  $query = "DELETE FROM administration WHERE admin_id = {$administration_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/administration.php");
  }else{
    echo "Query Failed";
  }
?>
