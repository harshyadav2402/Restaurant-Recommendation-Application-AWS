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
input[type=Email] {
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

input[type=Email]:focus {
    width: 70%;
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

input[type=password]:focus {
    width: 70%;
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
     <br>
        <h1 style="font-size: 50px;" class="heading">Please Enter Your Details</h1>
      
<div class="box">
      <form id='registration' role='form' action='' method='post' >
       
             <label class="heading"  for="FirstName">First Name:</label>
                   <br><br>
                    <input type="text" name="FirstName" id="FirstName" class="form-control input-sm" placeholder="Enter your First Name" maxlength="50" required />
                  
 <br><br>
               
                <label class="heading"  for="LastName">Last Name:</label>
                   <br><br>
                    <input type="text" name="LastName" id="LastName" class="form-control input-sm" placeholder="Enter your Last Name" maxlength="50" required />
                 
                <br><br>
                <label class="heading"  for="Email">Email Address:</label>
                  <br><br>
                    <input type="Email" name="Email" id="Email" class="form-control input-sm" placeholder="Enter your Email" maxlength="50" required />
                 
 <br><br>
              
                <label class="heading"  for="Street">Street Address:</label>
                  <br><br> 
                    <input type="text" name="Street" id="Street" class="form-control input-sm" placeholder="Enter Restaurant's Street Address" maxlength="50" required />
                  
 <br><br>
              
                <label class="heading"  for="City">City:</label>
                   <br><br>
                    <input type="text" name="City" id="City" class="form-control input-sm" placeholder="Enter City" maxlength="50" required/>
                  
               <br><br>
                <label class="heading"  for="State">State:</label>
                  <br><br>
                    <input type="text" name="State" id="State" class="form-control input-sm" placeholder="Enter State" maxlength="50" required/>
                   
                <br><br>
              
                <label class="heading"  for="Zipcode">Zipcode:</label>
                   <br><br>
                    <input type="text" name="Zipcode" id="Zipcode" class="form-control input-sm" placeholder="Zipcode" maxlength="50" required/>
                   

              <br><br>
                <label class="heading"  for="Contact">Contact Number:</label>
                  <br><br>
                    <input type="text" name="Contact" id="Contact" class="form-control input-sm" placeholder="Enter Contact Number" maxlength="50" required/>
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
             
                <label class="heading"  for="Password">Password:</label>
                  <br><br>
                    <input type="Password" name="Password" id="Password" class="form-control input-sm" placeholder="Enter your Password" maxlength="50" required/>
                  
<br><br>
             
                <input class="button" type="submit" value="Submit" name="SignUp" id="SignUp" class="btn btn-success"></input>
             
    </form>

   
      <form id='login' role='form' action='custlogin.php' method='post' >
      <br><br>
                <input class="button" type="submit" value="Click Here to Login" name="login" id="SignUp" class="btn btn-success"></input>
              
      </form>
    </div>
    </div>
<?php
		
      
			include "db_connection.php";
			if (!$con){
  			die(" Connection Failed: ". mysqli_connect_error());
			}
				if(isset($_POST["SignUp"])){
					
					$query= "INSERT INTO Customer(FirstName, LastName, Email, StreetAddress, City, State, Zipcode, Contact, FavCuisine, Password) VALUES ('$_POST[FirstName]', '$_POST[LastName]', '$_POST[Email]', '$_POST[Street]', '$_POST[City]', '$_POST[State]', '$_POST[Zipcode]', '$_POST[Contact]', '$_POST[Cuisine]', '$_POST[Password]')";
					
					if (mysqli_query($con, $query)) {
                        echo "<div class=heading>";
    				    echo "Customer Profile has been created successfully";
                        echo "</div>";
					} 
					else {
    				echo "Error: " . $query . "<br>" . mysqli_error($con);
				}
				mysqli_close($con);
				}
		
			?>
 		
	</body>
</html>