<?php
  include "config.php";

  $outcome_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM outcome WHERE outcome_id = {$outcome_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['outcome_img']);


  $query = "DELETE FROM outcome WHERE outcome_id = {$outcome_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/objective.php");
  }else{
    echo "Query Failed";
  }
?>
