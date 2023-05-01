<?php
  include "config.php";

  $iadvisor_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM iadvisor WHERE iadvisor_id = {$iadvisor_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['iadvisor_img']);


  $query = "DELETE FROM iadvisor WHERE iadvisor_id = {$iadvisor_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/iadvisor.php");
  }else{
    echo "Query Failed";
  }
?>
