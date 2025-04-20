<?php

include 'db.php';

$id = $_POST['id'];
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];


if (!empty($password)) {
    $password = password_hash($password, PASSWORD_DEFAULT);
    $sql="UPDATE users SET name='$name', email='$email', password= '$password' WHERE id='$id'";
} else {
    $sql="UPDATE users SET name='$name', email='$email' WHERE id='$id'";
}
$conn->query($sql);

header("Refresh:5;url=read.php");
echo "<h2>El usuario a sido actualizado correctamente</h2>";
?>