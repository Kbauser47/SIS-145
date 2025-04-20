<?php
include 'db.php';
$id = $_GET['id'];
$res = $conn->query("SELECT * FROM users WHERE id = $id");
$user = $res->fetch_assoc();
?>
<link rel="stylesheet" href="edit.css">
<div class="edit-container">
<form action="update.php" method="POST">
    <input type="hidden" name="id" value="<?= $user['id'] ?>">
    <input type="text" name="name" value="<?= $user['name'] ?>" required>
    <input type="email" name="email" value="<?= $user['email'] ?>" required>
    <input type="password" name="password" placeholder="Nueva contraseña (opcional)">
    <button type="submit">Actualizar</button>
</form>
</div>