<?php 
@session_start();
include("config.php");

	$ci=$_SESSION['ci'];
	$result = "SELECT foto FROM identificado WHERE ci='$ci'";
	$query= $conexion->query($result);
	$result_array = mysqli_fetch_array($query);
	
	
 ?>
<head>
	<title>BIENVENIDO</title>
	<link rel="stylesheet"  href="miestilo.css">
	<div id="page">
    <div id="header">
    	<div style="width: 70%;  float:left">
    	<h1>EXAMEN DE INF -324 </h1>
    	<h2>Corali Diana Almanza Patzi</h2>
    	
    	</div>
    	<div style="width: 30%;  float:right">
    		<br>
    		<?php	
					if(!empty($result_array[0])){
					echo '<img src="'.$result_array[0].'" width="100" height="100">';
				}	
 			?>
			
    	</div>
    </div>

	
</div>
    
</head>


	
		
		