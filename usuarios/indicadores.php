<?php 

include_once("../includes/conexion.php");
//generamos la consulta
$sql = "SELECT * FROM programa";
mysqli_set_charset($conexion, "utf8"); //formato de datos utf8
 
if(!$result = mysqli_query($conexion, $sql)) die();

$programa = array(); //creamos un array
$color = "#F7464A"; 
$value = 350;
while($row = mysqli_fetch_array($result)) 
{ 
    $codigo=$row['cod_programa'];
    $nombre=$row['nom_programa'];
 
    
 
    $programa[] = array('value'=> $value, 'label'=> $nombre, 'color'=> $color);
 
}

//desconectamos la base de datos
$close = mysqli_close($conexion) 
or die("Ha sucedido un error inexperado en la desconexion de la base de datos");
  
 
//Creamos el JSON
$json_string = json_encode($programa);
echo $json_string;
 
//Si queremos crear un archivo json, sería de esta forma:
/*
$file = 'clientes.json';
file_put_contents($file, $json_string);
*/

    
 
?>
