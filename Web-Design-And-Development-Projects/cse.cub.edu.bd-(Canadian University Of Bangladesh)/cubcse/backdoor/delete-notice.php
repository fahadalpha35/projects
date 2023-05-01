<?php
  include "config.php";

  $notice_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM notice WHERE notice_id = {$notice_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['notice_img']);


  $query = "DELETE FROM notice WHERE notice_id = {$notice_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/notice.php");
  }else{
    echo "Query Failed";
  }
?>
