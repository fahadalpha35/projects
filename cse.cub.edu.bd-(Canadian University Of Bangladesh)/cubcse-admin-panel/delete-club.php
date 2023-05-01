<?php
  include "config.php";

  $club_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM club WHERE club_id = {$club_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['club_img']);


  $query = "DELETE FROM club WHERE club_id = {$club_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/club.php");
  }else{
    echo "Query Failed";
  }
?>
