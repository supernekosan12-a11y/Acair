<?php
// Conexión a la base de datos
$conexion = new mysqli("localhost", "root", "", "campaña");
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}
$conexion->set_charset("utf8mb4");

// Consulta de todos los registros
$sql = "SELECT nombre, apellidos, colonia, clave_elector, telefono, estado, municipio, seccion, localidad, comunidad, distrito, fecha_registro FROM simpatizantes";
$resultado = $conexion->query($sql);

if (!$resultado) {
    die("Error en la consulta: " . $conexion->error);
}

// Encabezados para exportar a Excel
header("Content-Type: application/vnd.ms-excel; charset=UTF-8");
header("Content-Disposition: attachment; filename=simpatizantes.xls");
header("Pragma: no-cache");
header("Expires: 0");

// Generar tabla en HTML
echo "<meta charset='UTF-8'>"; // asegura que Excel interprete UTF-8
echo "<table border='1'>";
echo "<tr>
        <th>Nombre</th>
        <th>Apellidos</th>
        <th>Colonia</th>
        <th>Clave Elector</th>
        <th>Teléfono</th>
        <th>Estado</th>
        <th>Municipio</th>
        <th>Sección</th>
        <th>Localidad</th>
        <th>Comunidad</th>
        <th>Distrito</th>
        <th>Fecha Registro</th>
      </tr>";

while ($fila = $resultado->fetch_assoc()) {
    echo "<tr>";
    foreach ($fila as $valor) {
        // Escapar caracteres especiales y asegurar UTF-8
        echo "<td>" . htmlspecialchars($valor, ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8') . "</td>";
    }
    echo "</tr>";
}
echo "</table>";

$conexion->close();
?>
