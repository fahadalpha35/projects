<?php
  include "config.php";

  $mission_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM mission WHERE mission_id = {$mission_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['mission_img']);


  $query = "DELETE FROM mission WHERE mission_id = {$mission_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/vission.php");
  }else{
    echo "Query Failed";
  }
?>
