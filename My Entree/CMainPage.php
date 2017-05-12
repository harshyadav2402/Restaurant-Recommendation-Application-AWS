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
    width: 300px;
    border: 25px outset #99bbff;
    padding: 25px;
    margin: 25px;
    border-radius: 0.5em;
    display: inline-block;
    margin-left: 50px;
    margin-top: 50px;
}
body { background-image:url('https://www.walldevil.com/wallpapers/a28/table-plate-fork-spoon-knife.jpg'); 
                background-position: left-top;
                background-repeat: no-repeat;
                background-size: cover;
              }
              
input[type=text] {
    width: 200px;
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
    width: 100%;
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
<h1 style="color: #404040; font-family: Berkshire Swash; font-size: 50px; font-weight: bold;margin-top:5px; text-align: center;">Your Recommendations for Today!</h1>


<?php
include "db_connection.php";
session_start();     
#echo $_SESSION["username"];  

$sql = "select * from Customer join Restaurant join rating where Customer.Email ='$_SESSION[username]' and Customer.FavCuisine= Restaurant.Cuisine and Customer.City= Restaurant.City and rating.Username=Restaurant.Username order by rate DESC";
$result=mysqli_query($con,$sql);
if(mysqli_num_rows($result)>0)
{
  while($row=mysqli_fetch_assoc($result))
  {
    $image=$row["Photo"];
    echo "<div class=box>";
    echo "<a class=href href='MainPage.php?Username=".$row['Username']."'>".$row["Name"]."</a>";
    echo "<br><br>";
    echo "<img src='$image' width=300 height=270 />";
    echo "</div>";

}
}
?>


          
</body>
</html>
