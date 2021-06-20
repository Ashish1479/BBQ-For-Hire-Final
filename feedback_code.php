<?php
require_once('connection.php');
$name = $email = $feedback ;

$name = $_POST['name'];
$email = $_POST['email'];
$feedback = $_POST['feedback'];

$sql = "INSERT INTO fb (Name, Email, Feedback) VALUES ('$name','$email','$feedback')";
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