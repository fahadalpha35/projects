<?php
  include "config.php";

  $ostuff_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM ostuff WHERE ostuff_id = {$ostuff_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['ostuff_img']);


  $query = "DELETE FROM ostuff WHERE ostuff_id = {$ostuff_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/ostuff.php");
  }else{
    echo "Query Failed";
  }
?>
