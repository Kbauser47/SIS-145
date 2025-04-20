<?php
include 'db.php';

$result = $conn->query("SELECT * FROM users");
?>

<link rel="stylesheet" href="style.css">

<div class="container">
    <a href="create-form.html">Agregar Usuario</a>  
    <a href="logout.php">Cerrar sesión</a>

<h2>Lista de Usuarios</h2>
<table>
<tr><th>ID</th><th>Nombre</th><th>Email</th><th>Acciones</th></tr>

<?php while ($row = $result->fetch_assoc()){ ?>
<tr>
    <td><?php echo $row['id'] ?></td>
    <td><?= $row['name'] ?></td>
    <td><?= $row['email'] ?></td>
    <td>
        <a href="update-form.php?id=<?= $row['id'] ?>">Editar</a> | 
        <a href="delete.php?id=<?= $row['id'] ?>" onclick="return confirm('¿Seguro?')">Eliminar</a>
    </td>
</tr>
<?php }; ?>
</table>
</div>