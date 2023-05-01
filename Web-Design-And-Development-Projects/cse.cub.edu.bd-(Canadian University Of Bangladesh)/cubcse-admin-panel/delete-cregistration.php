<?php
  include "config.php";

  $cregistration_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM cregistration WHERE cregistration_id = {$cregistration_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['cregistration_img']);


  $query = "DELETE FROM cregistration WHERE cregistration_id = {$cregistration_id};";
  $query .= "UPDATE category SET cregistration = cregistration - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/cregistration.php");
  }else{
    echo "Query Failed";
  }
?>
