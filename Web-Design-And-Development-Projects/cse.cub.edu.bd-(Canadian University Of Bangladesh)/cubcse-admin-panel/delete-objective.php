<?php
  include "config.php";

  $objective_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM objective WHERE objective_id = {$objective_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['objective_img']);


  $query = "DELETE FROM objective WHERE objective_id = {$objective_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/objective.php");
  }else{
    echo "Query Failed";
  }
?>
