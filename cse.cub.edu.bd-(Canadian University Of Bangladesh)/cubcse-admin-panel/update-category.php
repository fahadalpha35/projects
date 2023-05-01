<?php 
    session_start();
    if(!isset($_SESSION['username'])){
        header("location: index.php");
    }


?>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ADMIN DASHBOARD | CUB Department Of CSE</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/ionicons.min.css">
	<link rel="stylesheet" type="text/css" href="css/menu.css">
	<link rel="stylesheet" type="text/css" href="css/dstyle.css">	

<style>
		div.header button {
				background-color: #f0f0f0;
				font-size: 11px;
				font-weight: 750;
				padding: 8px 12px;
				border: 2px solid black;
				border-radius: 5px;
		}
</style>

</head>
<body>

<div class="sidebar" id="scroller">
	<ul class="sidebar-menu">
		<li><a href="panel.php" class="dashboard"><i class="fa fa-tachometer"></i> <span>Dashboard</span></a></li>
		<li class="treeview">
            <li>
				<a href="post.php"><i class="fa fa-image"></i>Posts</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="notice.php"><i class="fa fa-image"></i>Notice</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="cover1.php"><i class="fa fa-image"></i>Cover Photo</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="message.php"><i class="fa fa-image"></i>Admission Notice</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="admission.php"><i class="fa fa-image"></i>Admissions</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="iadmission.php"><i class="fa fa-image"></i>I Admissions</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="ctransfer.php"><i class="fa fa-image"></i>C Transfer</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="fees.php"><i class="fa fa-image"></i>Tution Fees</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="cregistration.php"><i class="fa fa-image"></i>C Registration</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="curriculum.php"><i class="fa fa-image"></i>C Curriculum</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="objective.php"><i class="fa fa-image"></i>Objectives</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="vission.php"><i class="fa fa-image"></i>Vission</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="faculty.php"><i class="fa fa-image"></i>Faculty</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="administration.php"><i class="fa fa-image"></i>Administration</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="ostuff.php"><i class="fa fa-image"></i>Office Stuff</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="iadvisor.php"><i class="fa fa-image"></i>I Advisor</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="alumni.php"><i class="fa fa-image"></i>Alumni</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="sactivity.php"><i class="fa fa-image"></i>S Activities</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="club.php"><i class="fa fa-image"></i>Clubs</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="achievement.php"><i class="fa fa-image"></i>S Achievements</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="publication.php"><i class="fa fa-image"></i>Publication</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="research.php"><i class="fa fa-image"></i>Research Center</a>
			</li>
        </li>
		<li class="treeview">
            <li>
				<a href="job.php"><i class="fa fa-image"></i>J Placement</a>
			</li>
        </li>
        <li class="treeview">
            <li>
				<a href="category.php"><i class="fa fa-bookmark-o"></i>Category</a>
			</li>
        </li>
        <li class="treeview">
            <li>
				<a href="users.php"><i class="fa fa-user-plus"></i>Users</a>
			</li>
        </li>
        <li class="treeview">
		
				<a href="logout.php" class="admin-logout" ><?php echo $_SESSION['username'] ?>, Logout</a>
		
        </li>	

	</ul>
</div>

<div class="container-fluid">
	<div class="row">
		
		
		
		
	<br><br><br>	

  <?php

if($_SESSION['user_role'] == '0'){
  header("location: post.php");
}


if(isset($_POST['submit'])){

    include 'config.php';

    $category_id = mysqli_real_escape_string($connection,$_POST['category_id']);
    $category_name = mysqli_real_escape_string($connection,$_POST['category_name']);

    //UPDATE `category` SET `category_name` = 'js' WHERE `category`.`category_id` = 7;

    $query1 = "UPDATE category SET category_name = '{$category_name}' 
               WHERE category_id = '{$category_id}'";

    $result1 = mysqli_query($connection,$query1) or die("Update Query faild.");
    if($result1){
      header("location: category.php");
    }
}


?>



  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <center><h1 class="adin-heading"> Update Category</h1></center>
              </div>
              <div class="col-md-offset-3 col-md-6">
<?php 

      $category_id = $_GET['id'];

      include "config.php";
      $query = "SELECT * FROM category WHERE category_id = {$category_id}";
      $result = mysqli_query($connection,$query) or die("Failed");
      $count = mysqli_num_rows($result);

      if($count > 0){
      while($row = mysqli_fetch_assoc($result)){

?>

                  <form action="<?php $_SERVER['PHP_SELF'] ?>" method ="POST">
                      <div class="form-group">
                          <input type="hidden" name="category_id"  class="form-control" value="<?php echo $row['category_id'] ?>" placeholder="">
                      </div>
                      <div class="form-group">
                          <label>Category Name</label>
                          <input type="text" name="category_name" class="form-control" value="<?php echo $row['category_name'] ?>"  placeholder="" required>
                      </div>
                      <input type="submit" name="submit" class="btn btn-primary" value="Update" required />
                  </form>


                    <?php 
                          }

                    }

                    ?>
<br><br>
                </div>
              </div>
            </div>
          </div>


	
	</div>
</div>


<footer>
	<div class="col-sm-6">
		<font size="3" face="Roboto" color="#fff" > ©2021. | Developed By: CUB CSE Students. | All rights reserved. </font>
	</div>
	<div class="col-sm-6">
		<span class="pull-right"></span>
	</div>
</footer>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/app.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>

</body>
</html>