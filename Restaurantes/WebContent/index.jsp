<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestión de Menu</title>

	<link rel='stylesheet' id='camera-css'  href='css/camera.css' type='text/css' media='all'/>
	<link rel='stylesheet' href='css/style.css' />

    <script type='text/javascript' src='css/jquery.min.js'></script>
    <script type='text/javascript' src='css/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='css/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='css/camera.min.js'></script>
    
    <script>
		jQuery(function(){
			jQuery('#camera_wrap_1').camera({
			    alignment:'center',
			    barDirection:'leftToRight'
			    });

			jQuery('#camera_wrap_2').camera({
				height: '700px',
				loader: 'pie',
				pagination: false,
				thumbnails: true
			});
		});
	</script>
	
</head>

<body>
	<header>
		<img id ="logo" alt="Menu" src="img/logo.png" />
		<nav id="sup">
			<ul id="menu">
			<li class="active"><a href="index.jsp">Inicio</a></li>
				<% // <li><a href="login.jsp">Iniciar Sesi&oacute;n</a></li>%>
				<li><a href="listarRestaurantes.jsp">Mostrar Restaurantes</a></li>
				<li><a href="registrarRestaurante.jsp">Registar Restaurantes</a></li>
				<li><a href="contactos.jsp">Cont&aacute;ctanos</a></li>
			</ul>
		</nav>
	</header>
	
    <div class="wrap">

        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
            <div data-src="img/res1.png">
                
            </div>
            <div data-src="img/res2.jpg">
               
            </div>
            <div data-src="img/res3.jpg">

        </div>
        </div><!-- #camera_wrap_1 -->


	</div>
	
	<footer>
		<hr>
                <br />
		contáctanos (+593) 9 9999 999 © Todos los derechos reservados | Collaguazo-Valdiviezo
	</footer>
</body>
</html>
