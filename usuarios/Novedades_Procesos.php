<?php include_once("header.php"); ?>
<section class="Contenedor">
    <div class="Contenedor-menu">
        <?php include_once("menu_Novedades.php"); ?>
    </div>
    <div class="Contenedor-content">
        <div class="contents cont1">
            <h1 class="title">Nueva Novedad</h1>
            <form action="">
                <input name="descripcion" placeholder="Descripcion">
                <select name="programa" id="">
                    <option value="0" selected>Programa...</option>
                    <option value="1">Bancos</option>
                    <option value="2">Proveedores</option>
                    <?php /* Consulta de programas*/
?>
                </select>
                <select name="error" id="">
                    <option value="0" selected>Causa del error...</option>
                    <option value="1">Humano</option>
                    <option value="2">Sistema</option>
                    <option value="3">No Parametrizado</option>
                    <?php /* Consulta de programas*/
?>
                </select>
                <select name="acccion" id="">
                    <option value="0" selected>Accion...</option>
                    <option value="1">Anúlacion</option>
                    <option value="2">Borrado</option>
                    <option value="3">Parametrización</option>
                    <option value="4">Arreglo Fomplus</option>
                    <?php /* Consulta de programas*/
?>
                </select>
                <label for="solucion">¿Problema Solucionado?</label>
                <input type="radio" name="solucion" value="si">Si
                <input type="radio" name="solucion" value="no" checked>No
                <textarea name="" id="" cols="30" rows="5" placeholder="Solución"></textarea>
                <button id="enviar" class="button">Enviar</button>

            </form>
        </div>
        <div class="contents cont2">
            <h1 class="title">Indicadores</h1>
            <div class="panel-general">
                <div class="registradas">
                    <h3>Numero de novedades</h3>
                    <div class="number">45</div>
                </div>
                <div class="solucionadas">
                    <h3>Numero de soluciones</h3>
                    <div class="number">13</div>
                </div>
                <div class="nosolucionadas">
                    <h3>Sin solucion</h3>
                    <div class="number">22</div>
                </div>
            </div>
            <div class="contents-chart">
                <h2>Error mas comun</h2>
                <div class="mayor">
                    <h3 class="mayor-des">Humano</h3>
                    <h3 class="mayor-num">45%</h3> 
                    <?php ?>
                </div>
                <canvas id="chart-area" />
            </div>
             
            
        </div>
        <div class="contents cont3">
            <h1 class="title">Sugerencias</h1>

        </div>
    </div>
</section>
<?php include_once("footer.php"); ?>