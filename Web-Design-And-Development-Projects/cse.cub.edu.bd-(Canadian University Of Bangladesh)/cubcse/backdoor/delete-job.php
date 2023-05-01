<?php
  include "config.php";

  $job_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM job WHERE job_id = {$job_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['job_img']);


  $query = "DELETE FROM job WHERE job_id = {$job_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/job.php");
  }else{
    echo "Query Failed";
  }
?>
