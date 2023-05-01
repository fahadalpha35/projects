<?php
  include "config.php";

  $research_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM research WHERE research_id = {$research_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['research_img']);


  $query = "DELETE FROM research WHERE research_id = {$research_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/research.php");
  }else{
    echo "Query Failed";
  }
?>
