<?php
  include "config.php";

  $ctransfer_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM ctransfer WHERE ctransfer_id = {$ctransfer_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['ctransfer_img']);


  $query = "DELETE FROM ctransfer WHERE ctransfer_id = {$ctransfer_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/ctransfer.php");
  }else{
    echo "Query Failed";
  }
?>
