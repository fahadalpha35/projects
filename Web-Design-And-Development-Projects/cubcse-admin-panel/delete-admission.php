<?php
  include "config.php";

  $admission_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM admission WHERE admission_id = {$admission_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['admission_img']);


  $query = "DELETE FROM admission WHERE admission_id = {$admission_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/admission.php");
  }else{
    echo "Query Failed";
  }
?>
