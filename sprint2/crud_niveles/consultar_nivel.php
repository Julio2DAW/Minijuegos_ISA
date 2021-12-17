<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consulta niveles</title>
</head>

<body>
    <h1>Consulta de niveles</h1>
    <form action="" method="POST">
        <table>
            <tr>
                <td><label for="id">Introduzca el id nivel</label></td>
                <td><input type="text" name="id"></td>
            </tr>
        </table>
        <input type="submit" name="enviar" value="Confirmar">
    </form>

    <?php
    require 'metodos_niveles.php';
    $conexion = new Metodos_niveles();
    if (isset($_POST['enviar'])) {
        $conexion->mostrar();
    }
    ?>
    
</body>

</html>