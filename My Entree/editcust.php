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

<form method='post' action='Search.php'>
<ul>
  <li><a class="active" href="CMainPage.php">My Entree</a></li>
  <li><a href="editcust.php">Edit Profile</a></li>
  <li><a href="Happyhourcust.php">View Happy Hours</a></li>
  <li><a href="loctionmain.php">Restaurants Nearby</a></li>
  
  <li ><input type="text" name="cuisine" placeholder="Enter Cuisine"></li>
  <li ><input type="text" name="zipcode" placeholder="Enter Zipcode"></li>
  <li> <input class="button" type ="submit" name="submit" value="Submit">

  <li style="float:right; background-color: red;"><a href="logout.php">Logout</a></li>
</ul>
</form>
<br>
<h1 style="color: #404040; font-family: Berkshire Swash; font-size: 50px; font-weight: bold;margin-top:5px; text-align: center;">Review Your Details</h1>

<body>

</body>
</html>


<?php
include "db_connection.php";
session_start();

if(!$_SESSION['username'])
{header('Location: http://ec2-54-204-247-195.compute-1.amazonaws.com/cloud/custlogin.php');}

$query="SELECT * FROM Customer WHERE Email = '$_SESSION[username]'";


$result = mysqli_query($con,$query);


if(mysqli_num_rows($result)>0)
{
  $row = mysqli_fetch_assoc($result);

}
?>
<style>
 #button {
     
     position:absolute;
     top:0;
     right:0;
 }
</style>

<div class="box">

<div style="font-weight:bold">
<form style="text-align:center"   method='post' action='editc.php'  enctype="multipart/form-data" > 
<label class="heading">First Name:</label><br>
<input type="text" name="firstname"  value='<?php echo $row['FirstName']; ?>'   placeholder='First Name' required> 
    
    <br><br>
    <label class="heading">Last Name:</label><br>
<input type="text" name="lastname" value='<?php echo $row['LastName']; ?>' placeholder='Last Name' required> 
   
    <br><br>
    <label class="heading">Email:</label><br>
<input type="text" name="email" placeholder='Email' value='<?php echo $row['Email']; ?>' required > 
  
    <br><br>
    <label class="heading">Street Address:</label><br>
<input type="text" name="streetaddress" placeholder='Street Address' value='<?php echo $row['StreetAddress']; ?>' required >
   
    <br><br>
    <label class="heading">City:</label><br>
<input type="text" name='city' placeholder='City' value='<?php echo $row['City']; ?>' required> 

    <br> <br>
    <label class="heading">State:</label><br>
<input type="text" name='state' placeholder='State' value='<?php echo $row['State']; ?>' required> 

    <br> <br>
    <label class="heading">Zipcode:</label><br>
<input type="text" name='zipcode' placeholder='Zipcode' value='<?php echo $row['Zipcode']; ?>' required> 

<br> <br>
<label class="heading">Contact:</label><br>
<input type="text" name='contact' placeholder='Contact' value='<?php echo $row['Contact']; ?>' required> 

<br> <br>
<label class="heading"  for="Cuisine">Cuisine:</label>
                   <br><br>                  
                  <select class="heading" name="favcuisine">
                    <option <?php if($row['FavCuisine'] =='Indian'){echo "selected";} ?> value="Indian">Indian</option>
                    <option <?php if($row['FavCuisine'] =='Chinese'){echo "selected";} ?> value="Chinese">Chinese</option>
                    <option <?php if($row['FavCuisine'] =='Thai'){echo "selected";} ?> value="Thai">Thai</option>
                    <option <?php if($row['FavCuisine'] =='American'){echo "selected";} ?> value="American">American</option>
                    <option <?php if($row['FavCuisine'] =='Italian'){echo "selected";} ?> value="Italian">Italian</option>
                    <option <?php if($row['FavCuisine'] =='Mexican'){echo "selected";} ?> value="Mexican">Mexican</option>
                    <option <?php if($row['FavCuisine'] =='Japanese'){echo "selected";} ?> value="Japanese">Japanese</option>
                    <option <?php if($row['FavCuisine'] =='French'){echo "selected";} ?> value="French">French</option>
                  </select>
<br> <br>
    
    <input class="button" type="submit" name="apply" value="Apply Changes" >

</form>
</div>
</div>
</body>
</html>