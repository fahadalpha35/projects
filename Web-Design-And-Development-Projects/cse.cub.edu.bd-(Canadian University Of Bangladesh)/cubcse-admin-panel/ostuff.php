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
	<link rel="stylesheet" type="text/css" href="css/abstyle.css">	

<style>
		div.header button {
				background-color: #f0f0f0;
				font-size: 11px;
				font-weight: 750;
				padding: 8px 12px;
				border: 2px solid black;
				border-radius: 5px;
		}
		
		.btn {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			-ms-transform: translate(-50%, -50%);
			background-color: #0073aa;
			color: white;
			font-size: 16px;
			padding: 12px 24px;
			border: none;
			cursor: pointer;
			border-radius: 7px;
		}

		.btn:hover {
			background-color: #001726;
			color: white;
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

  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-10">
                  <h1 class="admin-heading">All ostuff Lists</h1>
              </div>
              <div class="col-md-2">
                  <a class="add-new" href="add-ostuff.php"><button class="btn">Add Member</button></a>
              </div>
              <div class="col-md-12">
<br>
<?php 

  include "config.php";
  $limit = 100;

if(isset($_GET['page'])){
  $page_number = $_GET['page'];
}else{
  $page_number = 1;
}
  
  $offset = ($page_number - 1) * $limit;




if($_SESSION['user_role'] == '1'){
   $query = "SELECT ostuff.ostuff_id, ostuff.title, ostuff.name, ostuff.designation, ostuff.email, ostuff.ostuff_img, ostuff.position, ostuff.ostuff_date,ostuff.category, category.category_name,user.username FROM ostuff
  LEFT JOIN category ON ostuff.category = category.category_id
  LEFT JOIN user ON ostuff.author = user.user_id
  ORDER BY ostuff.position ASC LIMIT {$offset },{$limit}";

}elseif ($_SESSION['user_role'] == '0') {
  $query = "SELECT ostuff.ostuff_id, ostuff.title, ostuff.name, ostuff.designation, ostuff.email, ostuff.ostuff_img, ostuff.position, ostuff.ostuff_date,ostuff.category, category.category_name,user.username FROM ostuff
  LEFT JOIN category ON ostuff.category = category.category_id
  LEFT JOIN user ON ostuff.author = user.user_id
  WHERE ostuff.author = {$_SESSION['user_id']}
  ORDER BY ostuff.position ASC LIMIT {$offset },{$limit}";
}

  $result = mysqli_query($connection,$query) or die("Failed");
  $count = mysqli_num_rows($result);





  if($count > 0){

?>
                  <table class="table table-stripped table-hovered table-border" id="mytable">
                      <thead>
                          <th>S.No.</th>
                          <th>Image</th>
                          <th>Title</th>
						  <th>ID</th>
                          <th>Category</th>
                          <th>Date</th>
                          <th>Author</th>
                          <th>Edit</th>
                          <th>Delete</th>
                      </thead>
					  
                      <tbody class="row_position">
<?php 
    $serial_number = 1;
    while($row = mysqli_fetch_assoc($result)){

?>
                          <tr>
                              <td class='id'><?php echo $serial_number++ ?></td>
                              <td><img height="50px" src="upload/<?php echo $row['ostuff_img'] ?>"></td>
                              <td><?php echo $row['title'] ?></td>
							  <td><?php echo $row['position'] ?></td>
                              <td><?php echo $row['category_name'] ?></td>
                              <td><?php echo $row['ostuff_date'] ?></td>
                              <td><?php echo $row['username'] ?></td>

<td class='edit'><a href='update-ostuff.php?id=<?php echo $row['ostuff_id'] ?>'><i class='fa fa-edit'></i></a></td>
<td class='delete'><a onclick="return confirm('Are You Sure?')" href='delete-ostuff.php?id=<?php echo $row['ostuff_id'] ?>&catid=<?php echo $row['category'] ?>'><i class='fa fa-trash-o'></i></a></td>


                          </tr>
<?php } ?>
                      </tbody>
      <?php } ?>
                  </table>
  <br>
<center>  
<?php 

      include "config.php";
      $query2 = "SELECT * FROM ostuff";
      $result2 = mysqli_query($connection,$query2) or dir("Failed.");
      if(mysqli_num_rows($result2)){
        $total_records = mysqli_num_rows($result2);
        $total_page = ceil($total_records/$limit);

        echo "<ul class='pagination admin-pagination'>";
        if($page_number > 1){
          echo '<li><a href="ostuff.php?page='.($page_number-1).'">prev</a></li>';
        }
        
        for($i = 1; $i <= $total_page; $i++){

          if($i == $page_number){
            $active = "active";
          }else{
            $active = "";
          }

          echo '<li class='.$active.'><a href="ostuff.php?page='.$i.'">'.$i.'</a></li>';
        }
        if($total_page > $page_number){
          echo '<li><a href="ostuff.php?page='.($page_number+1).'">next</a></li>';
        }
        echo "</ul>";
      }
      

?></center> 

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
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js" integrity="sha256-hlKLmzaRlE8SCJC1Kw8zoUbU8BxA+8kR3gseuKfMjxA=" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function() {
		$("#mytable").DataTable();
	});
$(".row_position").sortable({
	delay:150,
	stop:function(){
		var selectedData = new Array();
		$(".row_position>tr").each(function(){
			selectedData.push($(this).attr("id"));
		});
		updateOrder(selectedData);
	}
});
function updateOrder(aData){
	$.ajax({
		url: 'ajaxPost.php',
		type:'POST',
		data: {
			allData: aData
		},
		success: function(){
			alert("Your change successfully saved");
		}
	});
}
</script>
</body>
</html>