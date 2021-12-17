<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <h1>Inserción de minijuegos</h1>
    <form action="" method="post">
        <table>
            <tr>
                <td><label for="nombre">nombre del minijuego</label></td>
                <td><input type="text" name="nombre"> <!-- <br /> -->
                </td>
            </tr>

            <tr>
                <td><label for="ruta">ruta del minijuego</label></td>
                <td><input type="text" name="ruta"></td> <!-- <br /> -->
            </tr>
            <tr>
                <td><label for="portada">Portada de minijuego</label></td>
                <td><input type="text" name="portada"><!-- <br /> -->
                </td>
            </tr>

            <tr>
                <td><label for="fecha">fecha de creación</label></td>
                <td><input type="date" name="fecha"></td> <!-- <br /> -->
            </tr>
        </table>
        <input type="submit" name="enviar" value="Subir">


    </form>
    <?php
    require 'metodos_minijuegos.php';
    $conexion = new Metodos_minijuegos();

    if (isset($_POST['enviar'])) {
        $conexion->insertarMinijuegos();
    }
    ?>
</body>

</html>