<?php 
include_once("../includes/conexion.php");
session_start();
$programa = array(); //creamos un array
$color = array(); 
$chart = array();
$value = 350;
$x = 1;
$max = 0; 


function random_color_part() {
    return str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT);
}

function random_color() {
    return random_color_part() . random_color_part() . random_color_part();
}
//generamos la consulta
$sql = "SELECT `id_producto`, SUM(`cantidad_producto`) AS Cantidad
FROM venta
GROUP BY `id_producto`";
mysqli_set_charset($conexion, "utf8"); //formato de datos utf8
 
if(!$result = mysqli_query($conexion, $sql)) die();


while($row = mysqli_fetch_array($result)) 
{ 
    $codigo=$row['id_producto'];
    $venta=$row['Cantidad'];

 
   /* $programa[] = array('value'=> $value, 'label'=> $nombre, 'color'=> $color);*/
    $programa[] = array($codigo => $venta);
  
 echo "$codigo - $venta";
}

//consulta
echo "Holaaa   $programa[2]";
foreach($programa as $codigo =>$venta )
	{
       
    $resul1=mysqli_query($conexion,"SELECT * FROM producto WHERE id_producto = $codigo");            
        if($row1=mysqli_fetch_array($resul1))
        {
            do{
                $nombre=$row1["nombre_producto"];
                  echo "<br><br>$codigo - $venta";   
               // $chart[] = array('value'=> $venta[$codigo], 'label'=>  $nombre, 'color'=> random_color());
            }while($row1=mysqli_fetch_array($resul1));
        }
        
        

           
         
    $x++;
    
    
    
	}

//desconectamos la base de datos


$close = mysqli_close($conexion)

or die("Ha sucedido un error inexperado en la desconexion de la base de datos");

 
//Creamos el JSON

$json_string = json_encode($chart);
echo $json_string;


//Si queremos crear un archivo json, sería de esta forma:
/*
$file = 'clientes.json';
file_put_contents($file, $json_string);
*/



    
 
?>
