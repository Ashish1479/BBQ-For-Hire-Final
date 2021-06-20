

<?php
include_once('header.php');
require_once('connection.php');

$id = $_SESSION['id'];
$fname = $lname = $email = $gender = '';
$sql = "SELECT * FROM tbluser WHERE ID='$id'";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result) > 0)
{
	while($row = mysqli_fetch_assoc($result))
	{
		$fname = $row["Firstname"];
		$lname = $row["Lastname"];
		$email = $row["Email"];
		$gender = $row["Gender"];
	}
}

?>
<div class="jumbotron">
	<center>
		<h1>Welcome <?php echo $fname." ".$lname; ?></h1>
		<a href="messages1.php"> CHECK MESSEAGES </a>
</div>
	</center>
</div>
<div>
<a href="messages.php> CHECK MESSEAGES </a>
</div>