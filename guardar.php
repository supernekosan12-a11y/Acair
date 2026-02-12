<?php
$conexion = new mysqli("localhost", "root", "", "campaña");
$conexion->set_charset("utf8mb4");

if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}

$nombre        = $_POST['nombre'];
$apellidos     = $_POST['apellidos'];
$colonia       = $_POST['colonia'];
$clave_elector = $_POST['clave_elector'];
$telefono      = $_POST['telefono'];
$estado        = $_POST['estado'];
$municipio     = $_POST['municipio'];
$seccion       = $_POST['seccion'];
$localidad     = $_POST['localidad'];
$comunidad     = $_POST['comunidad'];
$distrito      = $_POST['distrito'];

// Validar duplicados
$sql = "SELECT id FROM simpatizantes WHERE clave_elector = ?";
$stmt = $conexion->prepare($sql);
$stmt->bind_param("s", $clave_elector);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    $mensaje = "Ya existe un registro con esa clave de elector.";
    $tipo = "error";
} else {
    $sql = "INSERT INTO simpatizantes 
        (nombre, apellidos, colonia, clave_elector, telefono, estado, municipio, seccion, localidad, comunidad, distrito, fecha_registro) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())";
    $stmt = $conexion->prepare($sql);
    $stmt->bind_param("sssssssssss", $nombre, $apellidos, $colonia, $clave_elector, $telefono, $estado, $municipio, $seccion, $localidad, $comunidad, $distrito);

    if ($stmt->execute()) {
        $mensaje = "Registro guardado correctamente.";
        $tipo = "success";
    } else {
        $mensaje = "Error: " . $conexion->error;
        $tipo = "error";
    }
}

$stmt->close();
$conexion->close();

// Redirigir a campaña.html con parámetros
header("Location: campaña.html?mensaje=" . urlencode($mensaje) . "&tipo=" . $tipo);
exit;
?>
