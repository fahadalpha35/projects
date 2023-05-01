<?php
include('includes/config.php');

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

    <title>Xaheer's Poem Portal | About Poet</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link rel="stylesheet" href="css/icons.css">
</head>

<body>
    <!-- Navigation -->
    <?php include('includes/header.php');?>
    <!-- Page Content -->
    <div class="container">
<br>
        <?php 
$pagetype='aboutus';
$query=mysqli_query($con,"select PageTitle,Description from tblpages where PageName='$pagetype'");
while($row=mysqli_fetch_array($query))
{

?>
        <h1 class="mt-5 mb-3 text-center"><?php echo htmlentities($row['PageTitle'])?>

        </h1>

        <center><img src="images/xaheer.jpg" height="185" ></center><br>

        <!-- Intro Content -->
        <center><div class="row">

            <div class="col-lg-12">

                <p><?php echo $row['Description'];?></p>
            </div>
        </div></center>
        <!-- /.row -->
        <?php } ?>

<br>
        <div class="col-md-12"><a href="tel:+8801790004664">
                <img src="images/ads.jpg" class="img-fluid"></a>

        </div>

    </div>



    <!-- /.container -->

    <!-- Footer -->
    <?php include('includes/footer.php');?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>