<?php 
 session_start();
 
 include("config.php");

 $nombre=$_POST["txtuser"];
 $password=$_POST["txtpass"];

 $consulta="SELECT ci,clave FROM usuario 
 WHERE ci='$nombre' and clave='$password'";
 if($query= $conexion->query($consulta)){
 $row=$query->fetch_array(); 
 $nr =$query->num_rows; 
 
 if($nr == 1){ 
   $_SESSION['ci']=$nombre;
   echo('$nombre');
   header ("Location:bienvenido.php");

 }

 else if($nr <= 0) { 
    header("Location:index.html");
               
 }  
 }
 else{
 echo $conexion->error;  
 }




?>