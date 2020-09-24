<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Restaurantes</title>
	<link rel='stylesheet' href='css/style.css' />
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
<div id="contact-form">
<h1>Registro de Restaurante</h1>
<%! public String obtieneAtributo(HttpServletRequest request, String nombre){
	 String valor=(String) request.getAttribute(nombre);
 	 if (valor==null){
 		 valor="";
 	 }
	     return valor; 
	}%>

  <p style="color:red"><%= obtieneAtributo(request,"valError") %></p> 
  <table border="0">
    <form method="post" action="RegistrarRestaurante" >
       <tr>
          <td id="label">Nombre</td>
          <td><input type="text" name="nombre" value="<%=obtieneAtributo(request,"valNombre")%>"/></td>
       </tr>
       <tr>
          <td id="label">Direccion</td>
          <td><input type="text" name="direccion" value="<%=obtieneAtributo(request,"valDireccion")%>"/></td>
       </tr>
       <tr>
          <td id="label">Horario</td>
          <td><input type="text" name="horario" value="<%=obtieneAtributo(request,"valHorario")%>"/></td>
       </tr>
              <tr>
          <td id="label">Telefono</td>
          <td><input type="text" name="telefono" value="<%=obtieneAtributo(request,"valTelefono")%>"/></td>
       </tr>
       <tr>
          <td><input type="submit" value="Guardar"/></td>
       </tr>
	</form>
  </table>
	</div>
</body>
</html>