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
      <div class="row centered-form">
        <h1 style="color: #404040; font-family: 'Berkshire Swash'; font-size: 50px; font-weight: bold; letter-spacing: -1px; line-height: 1; text-align: center; "class="text-center">Welcome To My Entree</h1>
        <h3 style="color: #404040; font-family: 'Berkshire Swash'; font-size: 25px; font-weight: bold; letter-spacing: -1px; line-height: 1; text-align: center; class="text-center">Your Personal Restaurant Recommendation App</h3></br></br></br>
      </div>
      

      <form id='clogin' role='form' action='custlogin.php' method='post' >
        <div class="col-xs-12 col-sm-4 col-md-4 col-sm-offset-4 col-md-offset-4">
          <div style="background-color: #e6e6ff;" class="panel panel-default">
            <div class="panel-body">
              <div class="control-group">
                <div class="controls">
                  <h4 style="color: #404040; font-family: 'Berkshire Swash';" class="text-center" for="CustLogin">Customer Login and Registration:</h4>
                  <div style="text-align:center; color: #404040; font-family: 'Berkshire Swash'; font-size: 25px; font-weight: bold;"  class="controls">
                    <input type="submit" value="Click Here" name="Customer Login" id="Login" class="btn btn-success"></input>
                  </div>
                </div>
              </div>
            </div>     
          </div>
        </div>
    </form>




      <form id='rlogin' role='form' action='restlogin.php' method='post' >
        <div class="col-xs-12 col-sm-4 col-md-4 col-sm-offset-4 col-md-offset-4">
          <div style="background-color: #e6e6ff;" class="panel panel-default">
            <div class="panel-body">
              <div class="control-group">
                <div class="controls">
                  <h4 style="color: #404040; font-family: 'Berkshire Swash';" class="text-center"  for="CustLogin">Restaurant Login and Registration:</h4>
                  <div  style ="text-align:center; color: #404040; font-family: 'Berkshire Swash';" class="controls">
                    <input type="submit" value="Click Here" name="Restaurant Login" id="Login" class="btn btn-success"></input>
                  </div>
                </div>
              </div>
            </div>     
          </div>
        </div>
    </form>
 </div>
 </div>
</body>
</html>