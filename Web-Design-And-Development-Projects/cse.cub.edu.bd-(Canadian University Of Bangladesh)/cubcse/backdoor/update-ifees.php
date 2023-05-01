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
  header("location: ifees.php");
}

?>
<div id="admin-content">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
        <center><h1 class="admin-heading">Update ifees</h1></center>
    </div>
    <div class="col-md-offset-3 col-md-6">
        <!-- Form for show edit-->

<?php 
            include "config.php";
            $ifees_id = $_GET['id'];

  $query = "SELECT ifees.ifees_id, ifees.description1, ifees.description2, ifees.description3, ifees.description4, ifees.description5, ifees.description6, ifees.description7, ifees.description8, ifees.description9, ifees.description10, ifees.description11, ifees.description12, ifees.description13, ifees.category, category.category_name FROM ifees
  LEFT JOIN category ON ifees.category = category.category_id
  LEFT JOIN user ON ifees.author = user.user_id
  WHERE ifees.ifees_id = {$ifees_id}";

  $result = mysqli_query($connection,$query) or die("Failed");
  $count = mysqli_num_rows($result);

  if($count > 0){
        while($row = mysqli_fetch_assoc($result)){
?>



        <form action="save-update-ifees.php" method="POST" enctype="multipart/form-data" autocomplete="off">
            <div class="form-group">
                <input type="hidden" name="ifees_id"  class="form-control" value="<?php echo $row['ifees_id']; ?>" placeholder="">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1"> Program</label>
                <textarea name="postdesc1" class="form-control"  rows="2">
                    <?php echo $row['description1']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Calendar</label>
                <textarea name="postdesc2" class="form-control"  rows="1">
                    <?php echo $row['description2']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Trimesters</label>
                <textarea name="postdesc3" class="form-control"  rows="1">
                    <?php echo $row['description3']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Total Credit Hours</label>
                <textarea name="postdesc4" class="form-control"  rows="1">
                    <?php echo $row['description4']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Admission Fee (One time) $</label>
                <textarea name="postdesc5" class="form-control"  rows="1">
                    <?php echo $row['description5']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> International Student Fee / Trimester $</label>
                <textarea name="postdesc6" class="form-control"  rows="1">
                    <?php echo $row['description6']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Service Fee / Trimester $</label>
                <textarea name="postdesc7" class="form-control"  rows="1">
                    <?php echo $row['description7']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Tuition Fee / Credit Hours $</label>
                <textarea name="postdesc8" class="form-control"  rows="1">
                    <?php echo $row['description8']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Total Tuition Fee $</label>
                <textarea name="postdesc9" class="form-control"  rows="1">
                    <?php echo $row['description9']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Total Tuition Fee (after 40% waiver) $</label>
                <textarea name="postdesc10" class="form-control"  rows="1">
                    <?php echo $row['description10']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Total Cost $</label>
                <textarea name="postdesc11" class="form-control"  rows="1">
                    <?php echo $row['description11']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Total Cost (after 40% waiver) $</label>
                <textarea name="postdesc12" class="form-control"  rows="1">
                    <?php echo $row['description12']; ?>
                </textarea>
            </div>
			<div class="form-group">
                <label for="exampleInputPassword1"> Total Cost (after 40% waiver) BDT</label>
                <textarea name="postdesc13" class="form-control"  rows="1">
                    <?php echo $row['description13']; ?>
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