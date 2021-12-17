<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar niveles</title>
</head>

<body>
    <h1>Modificación de nivel</h1>
    <form action="" method="POST">
        <table>
            <tr>
                <td><label for="id">Introduzca el id nivel</label></td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
               <td><label for="puntuacion">Introduzca la puntuación del nivel</label></td> 
                <td><input type="text" name="puntuacion"></td>
            </tr>
            <tr>
                <td><label for="vida">Introduzca los puntos de vida</label></td>
                <td><input type="text" name="vida"></td>
            </tr>
            <tr>
                <td><label for="velocidad">Introduzca la velocidad de las bolas</label></td>
                <td><input type="text" name="velocidad"></td>
            </tr>
            <tr>
                <td><label for="bolas">Introduzca el numero de bolas</label></td>
                <td><input type="text" name="bolas"></td>
            </tr>
        </table>
        <input type="submit" name="enviar" value="Confirmar">
    </form>
</body>

</html>