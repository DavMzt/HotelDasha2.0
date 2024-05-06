<?php

$planes = ControladorPlanes::ctrMostrarPlanes();

?>

<!--=====================================
PLANES
======================================-->

<div class="planes container-fluid bg-white p-0" id="planes">
	
	<div class="container p-0">
		
		<div class="grid-container">
			
			<div class="grid-item">
				
				<h1 class="text-center py-3 py-lg-5 tituloPlan text-uppercase" tituloPlan="BIENVENIDO">BIENVENIDO</h1>

				<p class="text-muted text-left px-4 descripcionPlan" descripcionPlan="Nos complace darles la bienvenida a nuestro exclusivo refugio donde la elegancia se encuentra con la hospitalidad para crear una experiencia inolvidable. Nuestros Planes de spa rejuvenecedor,  o bien para aquellos que buscan emoción y aventura, nuestro Plan de Aventura es la elección ideal,
				¿Estás planeando una escapada romántica? Nuestro Plan Romántico está diseñado para crear recuerdos inolvidables con tu ser querido. Disfruta de cenas íntimas a la luz de las velas, paseos románticos por la playa y tratamientos de spa relajantes diseñados para dos.
Y para aquellos que están celebrando el amor en su máximo esplendor, nuestro plan Luna de Miel ofrece una experiencia verdaderamente mágica. Desde suites de lujo con vistas impresionantes hasta cenas privadas en la playa, estamos aquí para hacer de tu luna de miel un sueño hecho realidad..">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure deleniti quidem minus voluptatibus repellendus error, excepturi quam, iste vitae tenetur fugiat possimus in. In iure cum facilis, saepe, libero accusantium.</p>

			</div>

			<?php foreach ($planes as $key => $value): ?>

			<div class="grid-item d-none d-lg-block" data-toggle="modal" data-target="#modalPlanes">
				
				<figure class="text-center">
					
					<h1 descripcion="<?php echo $value["descripcion"]; ?>" class="text-uppercase">PLAN <?php echo $value["tipo"]; ?></h1>

				</figure>

				<img src="<?php echo $servidor.$value["img"]; ?>" class="img-fluid" width="100%">


			</div>
				
			<?php endforeach ?>	
			
		</div>

	</div>

</div>
