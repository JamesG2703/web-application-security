<?php
require("connect_db.php");
// Create database
$sql = "CREATE DATABASE testDB";
if (mysqli_query($dbConnect, $sql)) {
echo "Database created successfully";
} else {
echo "Error creating database: " . mysqli_error($dbConnect);
}
mysqli_close($dbConnect);
?>