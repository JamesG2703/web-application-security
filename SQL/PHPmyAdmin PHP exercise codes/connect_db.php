<?php
$servername = "localhost";
$username = "root";
$password = "";
// Create connection
$dbConnect = mysqli_connect($servername, $username, $password);
// Check connection
if (!$dbConnect) {
 die("Connection failed: ".mysqli_connect_error());
}
else
{
echo "<h1>Connected Successfully</h1>";
}
?>