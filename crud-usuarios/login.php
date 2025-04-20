<link rel="stylesheet" href="login.css">
<?php
include 'db.php';

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $pass = $_POST['password'];

    $stmt = $conn->prepare("SELECT * FROM users WHERE email=?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();
    $usuario = $result->fetch_assoc();

    if ($usuario && password_verify($pass, $usuario['password'])) {
        $_SESSION['usuario'] = $usuario['name'];
        header("Location: read.php");
        exit();
    } else {
        echo "Usuario o contraseña incorrectos.";
    }
}
?>
    <div class="youtube-style">
        <div class="line1">Mi Primer</div>
        <div class="line2">C.R.U.D.</div>
    </div>
<form method="POST">
    <input type="email" name="email" placeholder="Correo" required>
    <input type="password" name="password" placeholder="Contraseña" required>
    <button type="submit">Iniciar sesión</button>
</form>