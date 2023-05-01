<?php

	$con=mysqli_connect("localhost", "root", "", "cubcse");
	
	if(mysqli_connect_error()){
		echo"Cannot connect to database";
		exit();
	}

?>