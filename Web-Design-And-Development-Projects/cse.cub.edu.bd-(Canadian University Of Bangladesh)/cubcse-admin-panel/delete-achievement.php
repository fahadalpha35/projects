<?php
  include "config.php";

  $achievement_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM achievement WHERE achievement_id = {$achievement_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['achievement_img']);


  $query = "DELETE FROM achievement WHERE achievement_id = {$achievement_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/achievement.php");
  }else{
    echo "Query Failed";
  }
?>
