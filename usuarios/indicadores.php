<?php 
include_once("../includes/conexion.php");
session_start();
$programa = array(); //creamos un array
$color = array(); 
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
$sql = "SELECT `id_vendedor`, SUM(`cantidad_producto`) AS Cantidad
FROM venta
GROUP BY `id_vendedor`";
mysqli_set_charset($conexion, "utf8"); //formato de datos utf8
 
if(!$result = mysqli_query($conexion, $sql)) die();


while($row = mysqli_fetch_array($result)) 
{ 
    $codigo=$row['id_vendedor'];
    $venta=$row['Cantidad'];

 
   /* $programa[] = array('value'=> $value, 'label'=> $nombre, 'color'=> $color);*/
    $programa[] = array($codigo => $venta);
  
 
}

//consulta
foreach($programa as $codigo =>$venta )
	{
       
    $resul1=mysqli_query($conexion,"SELECT * FROM vendedor WHERE id_vendedor = ".$codigo."");            
        if($row1=mysqli_fetch_array($resul1))
        {
            do{
                $nombre=stripslashes($row1["nombre_vendedor"]);
                $color = "#".random_color();
                $chart[] = array('value'=> (int)$venta[$x], 'label'=>  $nombre, 'color'=> $color);
                if((int)$venta[$x]>$max){ 
                    $max=(int)$venta[$x];
                    $name=$nombre;
                    $_SESSION["Nombre_max"]=$name;
                    $_SESSION["maximo"]=$max;
                    $_SESSION["color"]=$color;
                }
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
