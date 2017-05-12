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


input[type=password] {
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
</br>
<p style="font-size: 50px;" class="heading">Enter Your Restaurant Details Here</p>
      <div class="box">
      <form id='registration' role='form' action='' method='post' enctype="multipart/form-data">
                <label class="heading"  for="RestaurantName">Restaurant Name:</label>
                  <br><br>
                    <input type="text" name="RestaurantName" id="RestaurantName" class="form-control input-sm" placeholder="Enter Restaurant's Name" maxlength="50"  required >
                  

              <br><br>
                <label class="heading"  for="Street">Street Address:</label>
                  <br><br>
                    <input type="text" name="Street" id="Street" class="form-control input-sm" placeholder="Enter Street Address" maxlength="50" required >
                  
              <br><br>
                <label class="heading"  for="City">City:</label>
               <br><br>
                    <input type="text" name="City" id="City" class="form-control input-sm" placeholder="Enter City" maxlength="50"  required >
                  
             <br><br>
                <label class="heading"  for="State">State:</label>
                  <br><br>
                    <input type="text" name="State" id="State" class="form-control input-sm" placeholder="Enter State" maxlength="50" required>
                    
                  
              <br><br>
                <label class="heading"  for="Zipcode">Zipcode:</label>
                  <br><br>
                    <input type="text" name="Zipcode" id="Zipcode" class="form-control input-sm" placeholder="Zipcode" maxlength="50" required>
                    
              <br><br>
                <label class="heading"  for="Cuisine">Cuisine:</label>
                   <br><br>                  
                  <select class="heading" name='Cuisine'>
                    <option value="Indian">Indian</option>
                    <option value="Chinese">Chinese</option>
                    <option value="Thai">Thai</option>
                    <option value="American">American</option>
                    <option value="Italian">Italian</option>
                    <option value="Mexican">Mexican</option>
                    <option value="Japanese">Japanese</option>
                    <option value="French">French</option>
                  </select>

              <br><br>
                <label class="heading"  for="Oname">Owner Name:</label>
                  <br><br>
                    <input type="text" name="Oname" id="Oname" class="form-control input-sm" placeholder="Enter Owner Name" maxlength="50" required/>
                 
              <br><br>
                <label class="heading"  for="Username">Username:</label>
                 <br><br>
                    <input type="text" name="Username" id="Username" class="form-control input-sm" placeholder="Enter your Username" maxlength="50" required/>
                  

              <br><br>
                <label class="heading"  for="Password">Password:</label>
                  <br><br>
                    <input type="Password" name="Password" id="Password" class="form-control input-sm" placeholder="Enter your Password" maxlength="50" required/>
                  
              <br><br>
                <label class="heading"  for="pic">Profile Picture:</label>
                  <br><br>
                    <input class="heading" style="padding-left:60px" type="file" name="file" value='Upload Picture' />
                  

             <br><br>
                <input class="button" type="submit" value="Submit" name="SignUp" class="btn btn-success"></input>
              
            
        
    </form>
<br><br>
      <form id='login' role='form' action='restlogin.php' method='post' >
      
                <input class="button" type="submit" value="Click Here to Login" name="login" class="btn btn-success"></input>
              
            
      </form>
    
<?php
    
		include "db_connection.php";
if (!class_exists('S3')) require_once 'S3.php';

// AWS access info
if (!defined('awsAccessKey')) define('awsAccessKey', 'input aws key');
if (!defined('awsSecretKey')) define('awsSecretKey', 'input aws secret key');

define("BUCKET_NAME", "picturesweb");
$s3 = new S3(awsAccessKey, awsSecretKey);
			if (!$con){
  			die(" Connection Failed: ". mysqli_connect_error());
			}
				if(isset($_POST["SignUp"])){
          $file = rand(1000,100000)."-".$_FILES['file']['name'];
          $file_loc = $_FILES['file']['tmp_name'];
          $file_size = $_FILES['file']['size'];
          $file_type = $_FILES['file']['type'];
          

          // Check if our upload file exists
              if (!file_exists($file_loc) || !is_file($file_loc))
                exit("\nERROR: No such file: $file_loc\n\n");

              // Check for CURL. CURL is must if not installed please install and try again.
              if (!extension_loaded('curl') && !@dl(PHP_SHLIB_SUFFIX == 'so' ? 'curl.so' : 'php_curl.dll'))
                exit("\nERROR: CURL extension not loaded\n\n");


              if ($s3->putObjectFile($file_loc, BUCKET_NAME, $file, S3::ACL_PUBLIC_READ )) {
                  echo "S3::putObjectFile(): File copied to {BUCKET_NAME}/";
                  }else {
                  echo "S3::putObjectFile(): Failed to copy file\n";
                  }
                  
                  $url = "https://s3.amazonaws.com/picturesweb/".$file;
                  
          #$folder="/Uploads/";
          #move_uploaded_file($file_loc,$folder.$file);
					
					$query= "INSERT INTO Restaurant(Name, Street, City, State, Zipcode, Cuisine, OwnerName, Username, Password, Photo) VALUES ('$_POST[RestaurantName]', '$_POST[Street]', '$_POST[City]', '$_POST[State]', '$_POST[Zipcode]', '$_POST[Cuisine]', '$_POST[Oname]', '$_POST[Username]', '$_POST[Password]', '$url')";
					$sql= "INSERT INTO rating(Username, Rate) VALUES ('$_POST[Username]', 0)";
					if (mysqli_query($con, $query)) {
            echo "<div class=heading>";
    				echo "Restaurant Profile has been created successfully";
            echo "</div>";
					} 
					else {
    				echo "Error: " . $query . "<br>" . mysqli_error($con);
				}
				
				
		if (mysqli_query($con, $sql)) {
            echo "<div class=heading>";
    				#echo "Restaurant Profile has been created successfully";
            echo "</div>";
					} 
					else {
    				echo "Error: " . $sql . "<br>" . mysqli_error($con);
				}
				mysqli_close($con);
				}
			?>
 		</div>
  </body>
</html>