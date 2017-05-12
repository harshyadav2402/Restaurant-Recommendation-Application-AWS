<?php
include "db_connection.php";
session_start();
    $sql = "update Customer set FirstName='$_POST[firstname]', LastName='$_POST[lastname]',
    Email='$_POST[email]', StreetAddress='$_POST[streetaddress]', City='$_POST[city]',
    State='$_POST[state]', Zipcode='$_POST[zipcode]', Contact='$_POST[contact]', 
    FavCuisine='$_POST[favcuisine]' where Email='$_SESSION[username]'";

    if (mysqli_query($con, $sql)) {
        header('Location:  http://ec2-54-204-247-195.compute-1.amazonaws.com/cloud/CMainPage.php');
        $_SESSION['firstname'] = $_POST['firstname'];
        $_SESSION['lastname'] = $_POST['lastname'];
        
        
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }
   
?>