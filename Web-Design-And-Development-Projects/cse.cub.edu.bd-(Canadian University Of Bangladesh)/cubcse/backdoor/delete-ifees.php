<?php
  include "config.php";

  $ifees_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM ifees WHERE ifees_id = {$ifees_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['ifees_img']);


  $query = "DELETE FROM ifees WHERE ifees_id = {$ifees_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/fees.php");
  }else{
    echo "Query Failed";
  }
?>
