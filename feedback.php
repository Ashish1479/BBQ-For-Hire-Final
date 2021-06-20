
<?php
include_once('header.php');
?>

<div id="frmRegistration">
<form class="form-horizontal" action="feedback_code.php" method="POST">
	<h1>Feedback Form</h1>
	<h2> Please provide your feedback here. </h2>
	<div class="form-group">
    <label class="control-label col-sm-2" for="name"> Name:</label>
    <div class="col-sm-6">
      <input type="text" name="name" class="form-control" id="name" placeholder="Enter your Name" required>
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-6">
      <input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="lastname">Feedback:</label>
    <div class="col-sm-6">
      <input type="text" name="feedback" class="form-control" id="feedback" placeholder="Type your feedback here" style="height:200px" required>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" name="create" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form>
</div>
