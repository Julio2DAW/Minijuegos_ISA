<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <title>CRUD MINIJUEGOS</title>
</head>

<body>
    <header>
        <h1>GESTIÓN DE MINIJUEGOS</h1>
        <nav>
            <ul>
                <li>MINIJUEGOS</li>
                <li>NIVELES</li>
                <li>PARTIDAS</li>
            </ul>
        </nav>
    </header>
    <main>
        <aside>
            <p>Operaciones</p>
            <input class="botones" type="submit" value="Mostrar">
            <input class="botones" type="submit" value="Modificar">
            <input class="botones" type="submit" value="Insertar">
            <input class="botones" type="submit" value="Borrar">
        </aside>
        <div id="central">
            <h3>Nombre de la tabla</h3>
            <h3>Nombre de la operacion</h3>
            <form action="" method="POST">
                <label for="">Id de la tabla</label>
                <input class="campos" type="text">
                <label for="">Campo 2</label>
                <input class="campos" type="text">
                <label for="">Campo 3</label>
                <input class="campos" type="text">
                <input id="boton" type="submit" value="Enviar">

            </form>
        </div>
    </main>
    <footer>

    </footer>
</body>

</html>