1<?php

@session_start();
include("config.php");
if(!empty($_GET['color_fondo'])){
 
	switch($_GET['color_fondo']){
		
		case 'verde': $color = '#00FF00'; break;
		case 'azul': $color = '#0000FF'; break;
		case 'amarillo': $color = '#FFFF00'; break;
		case 'morado': $color = '#800080'; break;
		case 'blanco': $color = '#ffffff'; break;
		case 'negro': $color = '#000000'; break;
		case 'rojo': $color = '#FF0000'; break;
		
		case 'no': default: $color = '#fff'; break;
	}	

	$_SESSION['color_fondo'] = $color;
	
	$ci=$_SESSION['ci'];	
	$sql="UPDATE identificado set color='$color' WHERE ci='$ci'";
	$query= $conexion->query($sql);

}
 		
 	
?>
<?php 
@session_start();
include("config.php");

	$ci=$_SESSION['ci'];
	$nombres = "SELECT nombre FROM identificado WHERE ci='$ci'";
	$nm= $conexion->query($nombres);
	$row1= mysqli_fetch_array($nm);
	
	
 ?>

<html lang="es">
<head>
	<?php
		include("cabecera.php");
		?>
	<meta charset="UTF-8">
	<link rel="stylesheet"  href="miestilo.css">
	<style type="text/css">
		<?php	
			
			if(!empty($_SESSION['color_fondo'])){
				echo 'body {background:'.$_SESSION['color_fondo'].';}';
			}	
 		?>
	</style>
</head>
<body>
		<h1>BIENVENID@:  
		<?php	
					if(!empty($row1[0])){
					echo $row1[0];
				}	
 			?>
 			</h1>


		<form action="" method="GET" c>
		<p>Selecciona un color de fondo: </p>
		<select name="color_fondo">
			<option value="no" selected disabled>Selecciona un color</option>
				<option value="verde">Verde</option>
			<option value="azul">Azul</option>
			<option value="amarillo">Amarillo</option>
			<option value="morado">Morado</option>

			<option value="blanco">Blanco</option>
			<option value="negro">Negro</option>
			<option value="rojo">Rojo</option>
		
		</select>
		<input type="submit" value="Cambiar color" />
	</form>


</body>

</html>



