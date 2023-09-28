<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "testDB";
// Create connection
$dbConnect = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$dbConnect) {
 die("Connection failed: " . mysqli_connect_error());
}
$sql = "SELECT id, firstname, lastname FROM MyGuests";
$result = mysqli_query($dbConnect, $sql);
if (mysqli_num_rows($result) > 0) {
 // output data of each row
 while($row = mysqli_fetch_assoc($result)) {
 echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " .
$row["lastname"]. "<br>";
 }
} else {
 echo "0 results";
}
mysqli_close($dbConnect);
?>