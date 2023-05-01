<?php
  include "config.php";

  $fees_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM fees WHERE fees_id = {$fees_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['fees_img']);


  $query = "DELETE FROM fees WHERE fees_id = {$fees_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/fees.php");
  }else{
    echo "Query Failed";
  }
?>
