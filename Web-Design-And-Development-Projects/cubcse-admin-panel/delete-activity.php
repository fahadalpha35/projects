<?php
  include "config.php";

  $activity_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM activity WHERE activity_id = {$activity_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['activity_img']);


  $query = "DELETE FROM activity WHERE activity_id = {$activity_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/sactivity.php");
  }else{
    echo "Query Failed";
  }
?>
