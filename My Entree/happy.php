<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
<link href='//fonts.googleapis.com/css?family=Berkshire Swash' rel='stylesheet'>
<style>
ul {
  color: #404040; font-family: 'Berkshire Swash'; font-size: 20px; font-weight: bold;
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
    border-right:1px solid #bbb;
}

li:last-child {
    border-right: none;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}

.href{
  color: #404040; font-family: Berkshire Swash; font-size: 20px; font-weight: bold;margin-top:5px; text-align:center;
}
.box{
  background-color: #e6e6ff;
    width: 500px;
    border: 25px outset #99bbff;
    padding: 25px;
    margin: 25px;
    border-radius: 0.5em;
    display: inline-block;
    margin-left: 450px;
    margin-top: 50px;
    text-align: center;
}
body { background-image:url('https://www.walldevil.com/wallpapers/a28/table-plate-fork-spoon-knife.jpg'); 
                background-position: left-top;
                background-repeat: no-repeat;
                background-size: cover;
              }
input[type=text] {
    width: 250px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 20px 20px; 
    background-repeat: no-repeat;
    padding: 17px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
    margin-left:15px;
    font-family: Berkshire Swash;
}

input[type=text]:focus {
    width: 70%;
}
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 17px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    font-family: Berkshire Swash;
    cursor: pointer;
    margin-left:15px;
}
.heading{
  color: #404040; font-family: Berkshire Swash; font-size: 30px; font-weight: bold;margin-top:5px; text-align: center;
}
</style>
</head>
<body>

<ul>
   <li><a class="active" href="MainPageCu.php">My Entree</a></li>
  <li><a href="editrest.php">Edit Profile</a></li>
  <li><a href="happy.php">Set Happy Hours</a></li>
  <li><a href="res1.php">View Reservations</a></li>

  <li style="float:right; background-color: red;"><a href="logout.php">Logout</a></li>
</ul>

<br>
<h1 style="color: #404040; font-family: Berkshire Swash; font-size: 50px; font-weight: bold;margin-top:5px; text-align: center;">Enter Your Happy Hour Details</h1>
<div class="box">
      <form id='registration' role='form' action='' method='post' >
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
          <div class="panel panel-default">
            <div class="panel-body">

              <div class="control-group">
                <label class="heading" for="Status">Status:</label>
                  <div class="controls">                    
                  <select class="heading" name='Happyh'>
                    <option value="Start">Start</option>
                    <option value="Stop">Stop</option>
                  </select>

                  </div>
              </div><br>
        
              <div class="control-group">
                <label class="heading" for="description">Happy Hour Description:</label>
                  <div class="controls">
                    <input type="text" name="description" id="description" class="form-control input-sm" placeholder="Enter Description" maxlength="50" />
                  </div>
              </div><br>
              

              <div class="centered">
               <input class="button" type="submit" name="apply" value="Apply Changes" ></input>
              </div>
           </div>
           </div>
             </form>
    </div>
   </div>
        
</div>
          
</body>
</html>

<?php
include "db_connection.php";

        if(isset($_POST["apply"])){
          
          $query = "update Restaurant set happystatus= '$_POST[Happyh]', happyhourdetail='$_POST[description]' where Username ='$_SESSION[Username]'";
          if (mysqli_query($con, $query)) {
            echo "Submission successful";
          } 
          else {
            echo "Error: " . $query . "<br>" . mysqli_error($con);
        }
        mysqli_close($con);
        } 
?>

