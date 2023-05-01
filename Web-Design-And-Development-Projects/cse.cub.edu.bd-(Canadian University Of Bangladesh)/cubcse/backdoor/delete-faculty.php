<?php
  include "config.php";

  $faculty_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM faculty WHERE faculty_id = {$faculty_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['faculty_img']);


  $query = "DELETE FROM faculty WHERE faculty_id = {$faculty_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/faculty.php");
  }else{
    echo "Query Failed";
  }
?>
