<h1 class="nombre-pagina">Crear Nueva Cita</h1>
<p class="descripcion-pagina">Elige tus servicios y coloca tus datos</p>

<div id="app">
    <nav class="tabs">
       <button type="button" class="actual" data-paso="1">Servicios</button>
       <button type="button" data-paso="2">informacion</button>
       <button type="button" data-paso="3">Resumen</button>
    </nav>
   <div id="paso-1" class="seccion">
      <h2>Servicios</h2>
      <p class="text-center">Elige tus servicios a continuación</p>
      <div id="servicios" class="listado-servicios"></div>
   </div>
   <div id="paso-2" class="seccion">
       <h2>Tus Datos y Cita</h2>
       <p class="text-center">Coloca tus datos y fecha de tu cita</p>

       <form class="formulario">
           <div class="campo">
              <label for="nombre">Nombre</label>
              <input
                 id="nombre"
                 type="text"
                 placeholder="Tu Nombre"
                 value="<?php echo $nombre; ?> "
                 disabled
              />
           </div>
           <div class="campo">
           <label for="fecha">Fecha</label>
              <input
                 id="fecha"
                 type="date"
                 min="<?php echo date('Y-m-d', strtotime('+1 day'));?>"
              />
           </div>
           <div class="campo">
           <label for="Hora">Hora</label>
              <input
                 id="hora"
                 type="time"
              />
           </div>
       </form>
   </div>
   <div id="paso-3"  class="seccion contenido-resumen">
       <h2>Resumen</h2>
       <p class="text-center">Verifca que la información sea correcta</p> 
   </div>

   <div class="paginacion">
      <button
         id="anterior"
         class="boton"
      >&laquo; Anterior</button>

      <button
         id="siguiente"
         class="boton"
      > Siguiente &raquo;</button>
   </div>
</div>

<?php
   $script = "
   
       <script src='build/js/app.js'></script>
   ";
?>