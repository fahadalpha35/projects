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
  header("location: club.php");
}

?>
<div id="admin-content">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
        <center><h1 class="admin-heading">Update club</h1></center>
    </div>
    <div class="col-md-offset-3 col-md-6">

<?php 
            include "config.php";
            $club_id = $_GET['id'];

  $query = "SELECT club.club_id, club.description1, club.description2, club.description3, club.description4, club.description5, club.description6, club.description7, club.club_img, club.category, category.category_name FROM club
  LEFT JOIN category ON club.category = category.category_id
  LEFT JOIN user ON club.author = user.user_id
  WHERE club.club_id = {$club_id}";

  $result = mysqli_query($connection,$query) or die("Failed");
  $count = mysqli_num_rows($result);

  if($count > 0){
        while($row = mysqli_fetch_assoc($result)){
?>



        <form action="save-update-club.php" method="POST" enctype="multipart/form-data" autocomplete="off">
            <div class="form-group">
                <input type="hidden" name="post_id"  class="form-control" value="<?php echo $row['club_id']; ?>" placeholder="">
            </div>
			<div class="form-group">
                <label for="exampleInputPassword2">Club Name</label>
                <textarea name="post_title1" class="form-control"  rows="1">
                    <?php echo $row['description1']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword2">Advisor</label>
                <textarea name="post_title2" class="form-control"  rows="1">
                    <?php echo $row['description2']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword2">President</label>
                <textarea name="post_title3" class="form-control"  rows="1">
                    <?php echo $row['description3']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword2">General Secretary</label>
                <textarea name="post_title4" class="form-control"  rows="1">
                    <?php echo $row['description4']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword2">Treasurer</label>
                <textarea name="post_title5" class="form-control"  rows="1">
                    <?php echo $row['description5']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword2">Facebook</label>
                <textarea name="post_title6" class="form-control"  rows="1">
                    <?php echo $row['description6']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword2">Website</label>
                <textarea name="post_title7" class="form-control"  rows="1">
                    <?php echo $row['description7']; ?>
                </textarea>
            </div>
            <div class="form-group">
                <label for="exampleInputCategory">Category</label>
                <select class="form-control" name="category">
 <option disabled selected> Select Category</option>

  <?php  

          include "config.php";
          $query1 = "SELECT * FROM category";
          $result1 = mysqli_query($connection,$query1) or die("query failed.");

          if(mysqli_num_rows($result1) > 0 ){
            while ($row1 = mysqli_fetch_assoc($result1)) {

                if($row['category'] == $row1['category_id']){
                    $selected = "selected";
                }else{
                    $selected = "";
                }

              echo "<option {$selected} value='{$row1['category_id']}'> {$row1['category_name']} </option>";
            }
          }
   ?>


                </select>

            <input type="hidden" name="old_category" value="<?php echo $row['category']; ?>">

            </div>
            <div class="form-group">
                <label for="">Club image</label>
                <input type="file" name="new-image">
                <img  src="../backdoor/upload/<?php echo $row['club_img']; ?>" height="150px">
                <input type="hidden" name="old_image" value="<?php echo $row['club_img']; ?>">
            </div>
            <input type="submit" name="submit" class="btn btn-primary" value="Update" />
        </form>

      <?php } 

        }else{
         echo "Result not found.";   
        }

      ?>

<br><br>

        <!-- Form End -->
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