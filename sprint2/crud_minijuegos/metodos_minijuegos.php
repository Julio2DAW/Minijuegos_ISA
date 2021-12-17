<?php
require 'config.php';

class Metodos_minijuegos{

    protected $conexion;

    function __construct()
    {
        $this->conexion = new mysqli(SERVIDOR, USUARIO, CONTRASEÑA, BD);
        if ($this->conexion->connect_errno) {
            echo 'Se ha producido un error: '.$this->conexion->connect_error;
        }
    }

    function mostrarMinijuego(){
        $sql = 'SELECT * FROM minijuego WHERE idMinijuego = "'.$_POST['id'].'"';
        $resultado = $this->conexion->query($sql);

        if ($resultado->num_rows != 0) {
            echo '<table>';
            echo '<tr>';
            echo '<td>idMinijuego</td>';
            echo '<td>nombre</td>';
            echo '<td>ruta</td>';
            echo '<td>portada</td>';
            echo '<td>fechaHora</td>';
            echo '</tr>';
        if ($fila = $resultado->fetch_array(MYSQLI_ASSOC)) {
            echo '<tr>';
            echo '<td>'.$fila['idMinijuego'].'</td>';
            echo '<td>'.$fila['nombre'].'</td>';
            echo '<td>'.$fila['ruta'].'</td>';
            echo '<td>'.$fila['portada'].'</td>';
            echo '<td>'.$fila['fechaHora'].'</td>';
            echo '</tr>';
        }
        echo '</table>';
    }
}

    function mostrarMinijuegos(){
        $sql = 'SELECT * FROM minijuego';
        $resultado = $this->conexion->query($sql);
        if ($resultado->num_rows != 0) {
            echo '<table>';
            echo '<tr>';
            echo '<td>idMinijuego</td>';
            echo '<td>nombre</td>';
            echo '<td>ruta</td>';
            echo '<td>portada</td>';
            echo '<td>fechaHora</td>';
            echo '</tr>';
        while ($fila = $resultado->fetch_array(MYSQLI_ASSOC)) {
            echo '<tr>';
            echo '<td>'.$fila['idMinijuego'].'</td>';
            echo '<td>'.$fila['nombre'].'</td>';
            echo '<td>'.$fila['ruta'].'</td>';
            echo '<td>'.$fila['portada'].'</td>';
            echo '<td>'.$fila['fechaHora'].'</td>';
            echo '</tr>';
        }
        echo '</table>';
        } else {
            echo 'No se encontró ningún resultado';
        }
        
    }

    function insertarMinijuegos(){
        $sql = 'INSERT INTO minijuego VALUES ("NULL", "'.$_POST['nombre'].'", "'.$_POST['ruta'].'", "'.$_POST['portada'].'", "'.$_POST['fecha'].'")';
        $resultado = $this->conexion->query($sql);

        if ($resultado) {
            echo '<br />';
            echo 'Se ha insertado un nuevo minijuego';
        } else {
            echo '<br />';
            echo 'No se pudo insertar el minijuego';
        }
    }

    function borrarMinijuego(){
        $sql = 'DELETE FROM minijuego WHERE idMinijuego = '.$_POST['id'];
        $resultado = $this->conexion->query($sql);
        
        if ($resultado) {
            echo '<br />';
            echo 'Se ha borrado el minijuego '.$_POST['id'];
        }
         else{
            echo '<br />';
            echo 'No se pudo eliminar el registro';
        }
    }

    function actualizarMinijuego(){
        $sql = 'UPDATE minijuego SET nombre = "'.vacios($_POST['nombre']).'", ruta = "'.vacios($_POST['ruta']).'", portada = "'.$_POST['portada'].'", fechaHora = "'.vacios($_POST['fecha']).'" WHERE idMinijuego = '.$_POST['id'];

        $resultado = $this->conexion->query($sql);
        
        if ($resultado) {
            echo '<br />';
            echo 'Se ha modificado el registro';
        } else{
            echo '<br />';
            echo 'No se pudo modificar el registro';
        }
    }

}

function vacios($dato){
    if (empty($dato)) {
        return 'null';
    } else{
        return $dato;
    }
}
