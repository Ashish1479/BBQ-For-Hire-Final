<?php
require_once('connection.php');
$name = $email ;
$name = $_POST['name'];
$email = $_POST['email'];

$sql = "INSERT INTO pwd (Name, Email) VALUES ('$name','$email')";
$result = mysqli_query($conn, $sql);
if($result)
{
	header("Location: fedsuc.php");
}
else
{
	echo "Error :".$sql;
}
?>

<html>
<h1> Your Request is Successfully Sent</h1>
	We will get back to you soon 
</html>