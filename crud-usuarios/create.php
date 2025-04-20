<?php

include 'db.php';

$name = $_POST['name'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);

$sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$password')";
$conn->query($sql);

header("Refresh:5; url=read.php");
echo "<h2>El usuario se inserto de manera correcta</h2>";
?>