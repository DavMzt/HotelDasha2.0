<!--=====================================
CONTÁCTENOS
======================================-->

<div class="contactenos container-fluid bg-white py-4" id="contactenos">
	
	<div class="container text-center">
		
		<h1 class="py-sm-4">CONTÁCTENOS</h1>

		<form method="post">

			<div class="input-group input-group-lg">
				
				<input type="text" class="form-control mb-3 mr-2 form-control-lg" placeholder="Nombre" name="nombreContactenos" required>

				<input type="text" class="form-control mb-3 ml-2 form-control-lg" placeholder="Apellido" name="apellidoContactenos" required>

			</div>

			<div class="input-group input-group-lg">
				
				<input type="text" class="form-control mb-3 mr-2 form-control-lg" placeholder="Móvil" name="movilContactenos" required>

				<input type="text" class="form-control mb-3 ml-2 form-control-lg" placeholder="Correo Electrónico" name="emailContactenos" required>

			</div>

			<textarea class="form-control" rows="6" placeholder="Escribe aquí tu mensaje" name="mensajeContactenos" required></textarea>

			<button type="submit" class="btn btn-dark my-4 btn-lg py-3 text-uppercase w-50">ENVIAR</button>
			
			<?php

				$contactenos = new ControladorUsuarios();
				$contactenos -> ctrFormularioContactenos();
			
			?>

		</form>

	</div>

</div>

<!--=====================================
MAPA
https://www.google.com/maps/place/Sheraton+Lima+Hotel+%26+Convention+Center/@-12.0917202,-77.0366091,13z/data=!4m11!1m2!2m1!1sHoteles!3m7!1s0x9105c8c6cfd5a029:0x21e996eeb5d06b7d!5m2!4m1!1i2!8m2!3d-12.0572872!4d-77.0370224
======================================-->
<div class="mapa container-fluid bg-white p-0">
	

		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d119521.23865581378!2d-87.19448507821153!3d20.586476795436653!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8f4e447a1b5d164d%3A0xd0c3c127e0497f84!2sHotel%20Xcaret%20Mexico!5e0!3m2!1ses!2smx!4v1714597816042!5m2!1ses!2smx" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen></iframe>	
	<div class=" p-4 info"> 

		<h3 class="mt-4"><strong>VISITANOS</strong></h3>
		<p>Enamórate de México en más de 50 atractivos rodeados de selva, ríos subterráneos y el Mar Caribe. Disfruta de danzas típicas mexicanas, zonas arqueológicas y la presentación de DASHA México Espectacular..</p>

		<p>
		Hotel Dasha<br>
		Playa del carmem.<br>
		CA C.P 27083<br>
		408-996-1010
		</p>

		<p class="pb-4">Email: info@Dasha.com<br>
		Tel: 1-800-676-2775</p>

	</div>	

</div>

<!--=====================================
FOOTER
======================================-->

<footer class="container-fluid p-0">

	<div class="grid-container">
			
		<div class="grid-item d-none d-lg-block pt-2"></div>

		<div class="grid-item d-none d-lg-block pt-2">
			
			<p>No olvides seguirnos en todas nuestras redes. ¡VEN ATREVETE A VIVIR UN SIN FIN DE EXPERIENCIAS!</p>

		</div>

		<div class="grid-item pt-2">
			
			<ul class="py-1">

				<li>
					<a href="#" target="_blank"><i class="fab fa-facebook-f lead text-white float-left mx-3"></i></a>
				</li>

				<li>
					<a href="#" target="_blank"><i class="fab fa-twitter lead text-white float-left mx-3"></i></a>
				</li>

				<li>
					<a href="#" target="_blank"><i class="fab fa-youtube lead text-white float-left mx-3"></i></a>
				</li>


				<li>
					<a href="#" target="_blank"><i class="fab fa-instagram lead text-white float-left mx-3"></i></a>
				</li>	
			
			</ul>	

		</div>

	</div>

</footer>

<!--=====================================
REDES SOCIALES MÓVIL
======================================-->

<ul class="redesMovil p-2 nav nav-justified">

	<li class="nav-item">
		<a href="#" target="_blank"><i class="fab fa-facebook-f lead text-white"></i></a>
	</li>

	<li class="nav-item">
		<a href="#" target="_blank"><i class="fab fa-twitter lead text-white"></i></a>
	</li>

	<li class="nav-item">
		<a href="#" target="_blank"><i class="fab fa-youtube lead text-white"></i></a>
	</li>

	<li class="nav-item">
		<a href="#" target="_blank"><i class="fab fa-instagram lead text-white"></i></a>
	</li>	

</ul>	
