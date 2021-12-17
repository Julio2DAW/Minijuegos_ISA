<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Borrar minijuego</h1>
    <form action="" method="post">
        <label for="id">id del minijuego</label> <br />
        <input type="text" name="id"> <br />
        <input type="submit" name="borrar" value="borrar">
    </form>
    <?php
    require 'metodos_minijuegos.php';
    $conexion = new Metodos_minijuegos();

    if(isset($_POST['borrar'])){
        $conexion->borrarMinijuego();
    }
    ?>
</body>
</html>