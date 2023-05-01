<?php
  include "config.php";

  $iadmission_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM iadmission WHERE iadmission_id = {$iadmission_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['iadmission_img']);


  $query = "DELETE FROM iadmission WHERE iadmission_id = {$iadmission_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/iadmission.php");
  }else{
    echo "Query Failed";
  }
?>
