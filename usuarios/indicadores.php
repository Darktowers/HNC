<?php 
include_once("../includes/conexion.php");
session_start();
$programa = array(); //creamos un array
$color = array(); 
$value = 350;
$x = 1;
$max = 0; 
$h=0;
$cerrores=0;
$nombreusuario= "CUCHIVAQUE";

function random_color_part() {
    return str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT);
}

function random_color() {
    return random_color_part() . random_color_part() . random_color_part();
}




$resul=mysqli_query($conexion,"SELECT * FROM error");            
        if($row=mysqli_fetch_array($resul))
        {
            do{
                $cerrores++;
                $nombrerror=stripslashes($row["nom_error"]);
                
                    $resul1=mysqli_query($conexion,"SELECT `cod_usuario` FROM novedades WHERE cod_usuario = '$nombreusuario' AND `cod_error` = '0$cerrores'");            
                    if($row1=mysqli_fetch_array($resul1))
                    {
                        do{
                           $h++;
                         
                           
                            
                           
                           
                        }while($row1=mysqli_fetch_array($resul1));
                        $color = "#".random_color();
                        $chart[] = array('value'=> (int)$h, 'label'=>  $nombrerror, 'color'=> $color);
                      
                          if((int)$h>$max){ 
                            $max=(int)$h;
                            $name=$nombrerror;
                            $_SESSION["Nombre_max"]=$name;
                            $_SESSION["maximo"]=$max;
                            
                        }
                          $h=0;
                    }
                
                
                
                
                
                
            }while($row=mysqli_fetch_array($resul));
        }
        


//consulta errores frecuentes


       

        
        

           
         
    
    

 

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

