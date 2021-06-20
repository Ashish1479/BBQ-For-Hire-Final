
<link rel="stylesheet" type="text/css" href="styles.css">
<div id="frmRegistration" style="text-align:center;">
<form class="form-horizontal" method="POST" action="login_code.php">
	<div class="loginbox">
  <h1>Staff Login</h1>
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-6">
      <input type="email" class="form-control" name="email" id="email" placeholder="Enter email">
  </div>
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-6"> 
      <input type="password" class="form-control" name="password" id="pwd" placeholder="Enter password">
    </div> 
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" name="login" value="Login">
    </div>
    <div style="text-align:left;">
     TRY AGAIN
</div>
	<div style="text-align:right;">
  Add Staff ?? <a href="staffregi.php">Click here to register </a>
	Change Password??<a href="newfolder/welcome.php">Click here to reset</a>
  
	</div>
</div>
</form>
</div>
</body>
