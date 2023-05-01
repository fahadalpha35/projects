<?php
  include "config.php";

  $publication_id = $_GET['id'];
  $cat_id = $_GET['catid'];

  $query1 = "SELECT * FROM publication WHERE publication_id = {$publication_id}";
  $result = mysqli_query($connection, $query1) or die("Query Failed : Select");
  $row = mysqli_fetch_assoc($result);

  unlink("upload/".$row['publication_img']);


  $query = "DELETE FROM publication WHERE publication_id = {$publication_id};";
  $query .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

  if(mysqli_multi_query($connection, $query)){
    header("location: ../backdoor/publication.php");
  }else{
    echo "Query Failed";
  }
?>
