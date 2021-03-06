<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
    <meta http-equiv="refresh" content="15">
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
    width: 250px;
    border: 25px outset #99bbff;
    display: inline-block;
    padding: 25px;
    margin: 25px;
    border-radius: 0.5em;
    display: inline block;
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
    padding: 17px 35px;
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

.span{
  text-align: center; float: right;
}
</style>
</head>
<body>

<form method='post' action='Search.php'>
<ul>
  <li><a class="active" href="MainPageCu.php">My Entree</a></li>
  <li><a href="editrest.php">Edit Profile</a></li>
  <li><a href="happy.php">Set Happy Hours</a></li>
  <li><a href="res1.php">View Reservations</a></li>
  <li style="float:right; background-color: red;"><a href="logout.php">Logout</a></li>
</ul>
</form>


<?php

include "db_connection.php";
session_start();


$sql = "select * from Restaurant natural join Reservation join Customer where Customer.Email='$_SESSION[username]'";
$result = $con->query($sql);
if(mysqli_num_rows($result)>0)
{
    while($row=mysqli_fetch_assoc($result))
    {   echo "<div class=box>";
        echo "<div class=heading>";
        echo "$row[FirstName]"." "."$row[LastName]"."<br>"."<br>";
        echo "Contact Details"."<br>";
        echo "$row[Email]"."<br>";
        echo "$row[Contact]"."<br>"."<br>"; 
        echo "Time: "."$row[Arrive]"."<br>"."<br>"; 
        echo "</div>";
        echo "<form method=post >";
        echo "<input type=hidden name =reser value='$row[Reserid]'>";
        echo "<input class=button type =submit name=clear  value='Clear Item From List'>";
        echo "</form>";
        echo "</div>";
        
    }
}

else{
    echo "<div class=heading>";
    echo "No Reservations Yet!";
    echo "</div>"; 
}
?>
</body>
</html>


<?php


if(isset($_POST["clear"]))
{
    $sql = "delete from Reservation where Reserid='$_POST[reser]'";

    if (mysqli_query($con, $sql)) {
        echo "<div class=heading>";  
        echo "Enjoy the Day!";
        echo "</div>";  
        header("Refresh:0");   
    } 
    else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }
}
?>
