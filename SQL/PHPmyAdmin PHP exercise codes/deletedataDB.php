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
// sql to delete a record
$sql = "DELETE FROM MyGuests WHERE id=3";
if (mysqli_query($dbConnect, $sql)) {
echo "Record deleted successfully";
} else {
 echo "Error deleting record: " . mysqli_error($dbConnect);
}
mysqli_close($dbConnect);
?>