<?php
include "db_connection.php";
session_start();

if (!class_exists('S3')) require_once 'S3.php';

// AWS access info
if (!defined('awsAccessKey')) define('awsAccessKey', 'input aws key');
if (!defined('awsSecretKey')) define('awsSecretKey', 'input aws secret key');

define("BUCKET_NAME", "picturesweb");
$s3 = new S3(awsAccessKey, awsSecretKey);

	if(isset($_POST["apply"]))	{
	
        $file = $_FILES['file']['name'];
          $file_loc = $_FILES['file']['tmp_name'];
          $file_size = $_FILES['file']['size'];
          $file_type = $_FILES['file']['type'];
          //$folder="Uploads/";
          //move_uploaded_file($file_loc,$folder.$file);
		  
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

    $sql = "update Restaurant set Name='$_POST[Name]',
    Street='$_POST[Street]', City='$_POST[City]',
    State='$_POST[State]',
    Zipcode='$_POST[Zipcode]',Cuisine='$_POST[Cuisine]',
    OwnerName='$_POST[OwnerName]', Photo='$url' where Username='$_SESSION[Username]'";

    if (mysqli_query($con, $sql)) {
        header('Location: http://ec2-54-204-247-195.compute-1.amazonaws.com/cloud/MainPageCu.php');
        $_SESSION['firstname'] = $_POST['firstname'];
        $_SESSION['lastname'] = $_POST['lastname'];
        
        
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($con);
    }
	}
?>