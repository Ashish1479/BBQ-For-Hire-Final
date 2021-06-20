<!--
Here, we write code for registration.
-->
<?php
require_once('connection.php');
$fname = $lname = $gender = $email = $sec = $password = $pwd = '';

$fname = $_POST['firstname'];
$lname = $_POST['lastname'];
$gender = $_POST['gender'];
$email = $_POST['email'];
$sec = $_POST['sec'];
$pwd = $_POST['password'];
$password = MD5($pwd);
$dup = mysqli_query($conn,"Select * from tbluser where email = '$email'");
if (mysqli_num_rows ($dup)>0)
{
	header ("Location: err.php") ;
}
else {

$sql = "INSERT INTO tbluser (Firstname,Lastname,Gender,Email,DOB,Password) VALUES ('$fname','$lname','$gender','$email','$sec','$password')";
$result = mysqli_query($conn, $sql);
if($result)
{
	header("Location: regissuc.php");
}
else
{
	echo "Error :".$sql;
}
}
?>