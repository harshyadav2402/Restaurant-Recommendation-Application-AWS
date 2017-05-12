<!DOCTYPE html>
<html lang="en">
<head>
<link href='//fonts.googleapis.com/css?family=Berkshire Swash' rel='stylesheet'>
<meta charset="UTF-8"/>
<title>Log In</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

  <body>
    <div class="container">
      <style type="text/css">
        body { background-image:url('https://www.walldevil.com/wallpapers/a28/table-plate-fork-spoon-knife.jpg'); 
                background-position: left-top;
                background-repeat: no-repeat;
                background-size: cover;
              }
        {
        text-align:center;
        }
      </style>
      <div class="row centered-form"><br>
        <h1 style="color: #404040; font-family: 'Berkshire Swash'; font-size: 50px; font-weight: bold; letter-spacing: -1px; line-height: 1; text-align: center; " class="text-center">Welcome To My Entree Restuarant Login</h1><br><br>
      </div>

      <form id='login' role='form' action='' method='post' >
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
          <div style="background-color: #e6e6ff;" class="panel panel-default">
            <div class="panel-body">

              <div class="control-group">
                <label style="color: #404040; font-family: 'Berkshire Swash'; font-size: 25px; font-weight: bold;" class="control-label"  for="userName">Username:</label>
                  <div class="controls">
                    <input type="text" name="userName" id="userName" class="form-control input-sm" placeholder="Username" maxlength="50" />
                  </div>
              </div>

              <div class="control-group">
                <label style="color: #404040; font-family: 'Berkshire Swash'; font-size: 25px; font-weight: bold;" class="control-label"  for="password">Password:</label>
                  <div class="controls">
                    <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password" maxlength="50" />
                    <p>               </p>
                  </div>
              </div>

              
              <div class="centered">
                <input style="color: #404040; font-family: 'Berkshire Swash'; font-size: 25px; font-weight: bold;" type="submit" value="Login" name="Login" id="Login" class="btn btn-success"></input>
              </div>
            </div>
          </div>
        </form>
<form id='login' role='form' action='restreg.php' method='post' >
          <div>
            <h5 style="color: red; font-family: 'Berkshire Swash'; font-size: 20px; font-weight: bold;" class="text-center"> Not a Member Yet?</h5>
            <a class="text-center" href="restreg.php">
              <div class="centered">
                <input style="color: #404040; font-family: 'Berkshire Swash'; font-size: 25px; font-weight: bold;" type="submit" value="Signup" name="Signup" id="Signup" class="btn btn-info"></input> </a>
              </div>
          </div>
        </div>
      </form>
	
</body>
      <?php
      session_start();
include "db_connection.php";
if (!$con){
  die(" Connection Failed: ". mysqli_connect_error());
}
if(isset($_POST["Login"]))
          {
$query="SELECT * FROM Restaurant WHERE Username = '$_POST[userName]' and Password = '$_POST[password]'";

$result = mysqli_query($con,$query);
if(mysqli_num_rows($result)>0)
{
  $_SESSION["Username"] = $_POST['userName'];
    $_SESSION['authen']=True;
    #echo $_SESSION['Username'];
    header('Location: http://ec2-54-204-247-195.compute-1.amazonaws.com/cloud/MainPageCu.php');
}
else
{
  echo "Username or Password is Incorrect";
}
mysqli_close($con);
}
?>

<?php
if(isset($_POST["Signup"]))
  ?>
    </div>
  </body>
</html>

