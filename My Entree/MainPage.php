<?php
include "db_connection.php";
session_start();

$Username = $_GET['Username'];
$sql = "select * from Restaurant, rating where Restaurant.Username ='$_GET[Username]'";
$result = $con->query($sql);
$data = $result->fetch_assoc(); 

$sql1 = "SELECT avg(rate) as r from rating where Username='$_GET[Username]'";
$result1 = $con->query($sql1);
$data1 = $result1->fetch_assoc(); 
             

?>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
    <meta http-equiv="refresh" content="10">
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
    width: 700px;
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
    width: 40%;
}

input[type=datetime-local] {
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

input[type=datetime-local]:focus {
    width: 40%;
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

.span{
  text-align: center; float: right;
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
    
    <div class="box">
       <div class="span"> 
        <br>
        <form method="post" autocomplete="off" action="">
                            
            <?php echo "<a class=href >".$data["Name"]."</a>";?>
            <br><br>
              <?php echo "<a class=href >".$data["Street"]."</a>".", ";?>
               
            
            <?php echo "<a class=href >".$data["City"]."</a>";?>
          <br><br>

            <?php echo "<a class=href >".$data["State"]."</a>";?>
            <br><br>

            <?php echo "<a class=href >".$data["Zipcode"]."</a>";?>
            <br><br>
            <label class="heading">Cuisine:</label><br>
            <?php echo "<a class=href >".$data["Cuisine"]."</a>";?>
			
			<br><br>
            <label class="heading">Rating:</label><br>
            <?php echo "<a class=href >".$data1["r"]."</a>";?>
             </div>
               
            <img src="<?php echo $data['Photo']; ?>" width="300" height="270" />
            <br><br>
            <a href="<?php echo $data['Photo'];?>"> </a>
          </form>
          
 


<form style="text-align:center"   method='post' action=''  >
<input type='hidden' name='Username' value='<?php echo $_GET['Username']; ?>' >
<input type="datetime-local" name="time">
<br><br>
<input class="button" type="submit" name="apply" value="Make Reservation" >
<br><br>
<input type="text" name="rating1" value=''>
<input class="button" type="submit" name="rate" value='Enter Rating' >
</form> 
</div> 


<?php


if(isset($_POST["apply"]))
{
    $sql = "insert into Reservation(Username, Email, Value, Arrive) values ('$_POST[Username]', '$_SESSION[username]', 1, '$_POST[time]')";

    if (mysqli_query($con, $sql)) {
      
        echo "<div class=heading>";
        echo "Thank You for the Reservation"."<br>"."<br>";
        echo "Enjoy the Day!";      
        echo "</div>";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }
  }
if(isset($_POST["rate"]))
{
    $sql = "insert into rating(Username, Email, rate) values ('$_POST[Username]', '$_SESSION[username]', '$_POST[rating1]')";

    if (mysqli_query($con, $sql)) {
      
        echo "<div class=heading>";
        echo "Thank You for the Ratings"."<br>"."<br>";
        echo "Enjoy the Day!";      
        echo "</div>";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }
  }
?>
</body>
</html>