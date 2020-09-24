<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Libros</title>
</head>
<body>
<h1>Pantalla para editar un libro</h1>
<%! public String obtieneAtributo(HttpServletRequest request, String nombre){
	 String valor=(String) request.getAttribute(nombre);
 	 if (valor==null){
 		 valor="";
 	 }
	     return valor; 
	}%>

  <p style="color:red"><%= obtieneAtributo(request,"valError") %></p> 
  <table border="0">
    <form method="post" action="ActualizarLibro" >
       <tr>
          <td>Título</td>
          <td><input type="text" name="titulo" value="<%=obtieneAtributo(request,"valId")%>"/></td>
       </tr>
       <tr>
          <td>Autor</td>
          <td><input type="text" name="autor" value="<%=obtieneAtributo(request,"valAutor")%>"/></td>
       </tr>
       <tr>
          <td>Resumen</td>
          <td><input type="text" name="resumen" value="<%=obtieneAtributo(request,"valResumen")%>"/></td>
       </tr>
       <tr>
          <td><input type="submit" value="Guardar"/></td>
       </tr>
	</form>
  </table>
	
</body>
</html>