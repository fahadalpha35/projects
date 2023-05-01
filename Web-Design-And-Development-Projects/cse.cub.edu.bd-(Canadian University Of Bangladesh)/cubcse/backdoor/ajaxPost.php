<?php 

  include "config.php";
    session_start();
  $allData = $_POST['allData'];
  $i = 1;
  foreach ($allData as $key => $value) {
	  $sql .= "UPDATE faculty SET faculty.faculty_id=".$i."WHERE faculty.faculty_id = {.$value}";
	  $mysqli->query($sql);
	  $i++;
  }
  
?>