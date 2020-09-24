<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.List"%>
<%@ page import="adm.restaurante.modelo.Restaurante"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Restaurantes</title>
	<link rel='stylesheet' href='css/style.css' />
</head>
<body>
<header>
		<img id ="logo" alt="Menu" src="img/logo.png" />
		<nav id="sup">
			<ul id="menu">
				<li class="active"><a href="index.jsp">Inicio</a></li>
				<li><a href="login.jsp">Iniciar Sesi&oacute;n</a></li>
				<li><a href="listarRestaurantes.jsp">Restaurantes</a></li>
				<li><a href="contactos.jsp">Cont&aacute;ctanos</a></li>
			</ul>
		</nav>
	</header>
	<H1>Listado de Restaurantes</H1>

	<table border="1">
		<%
      List<Restaurante> restaurantes;
      restaurantes= (List<Restaurante>)request.getAttribute("restaurantes");
      for (Restaurante r:restaurantes) {
      %>
		<tr>
			<td><a href="ListarMenu?id=<%=r.getId()%>">VerMenu</a></td>
		</tr>
		<tr>
		<td><a href="EditarMenu?id=<%=r.getId()%>">Editar</a></td>
		</tr>
		<tr>
			<td><a href="EliminarMenu?id=<%=r.getId()%>">Eliminar</a></td>
		</tr>

		<% 
      }
      %>

	</table>
</body>
</html>