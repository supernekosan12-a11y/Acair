# Acair
Este proyecto permite registrar simpatizantes en una base de datos MySQL mediante un formulario en HTML y PHP.

## Archivos
- index.html → formulario principal
- guardar.php → guarda los datos en la base
- exportar_excel.php → exporta registros a Excel
- campa__a.sql → script SQL para crear la base de datos
- logo.jpeg → imagen usada en el formulario

## Instalación
1. Importar `campa__a.sql` en MySQL (phpMyAdmin o consola).
2. Colocar los archivos en `htdocs/campaña` (XAMPP).
3. Abrir `http://localhost/campaña/index.html` en el navegador.
4. Probar el formulario: al registrar muestra alertas flotantes ✔ éxito o ✖ error.
