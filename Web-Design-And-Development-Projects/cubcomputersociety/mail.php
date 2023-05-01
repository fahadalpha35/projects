<?php
//the subject
$sub = $_POST['subject'];
//the message
$msg = $_POST['message'];
//recipient email here
$rec = "fahadahmedsam@hotmail.com";
//send email
mail($rec,$sub,$msg);
header("Location: complainbox.html?mailsend");
?>