<html>
<head>
<%@page import="java.sql.*" %>
<link href="estilo.css" rel="stylesheet" type="text/css" />
</head>
<body>
<% 
//conexion
Class.forName("com.mysql.jdbc.Driver");
Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectofinal", "root", "");
Statement dbstatement = dbconect.createStatement();
//valores sacados del formulario
String nombre = request.getParameter("introducir_nombre");
String pcedula = request.getParameter("introducir_cedula");
String zfecha = request.getParameter("fecha");
//valores enviados a la base de datos
String insertarsql = "INSERT INTO datosprogr (nombre, cedula, fecha) VALUES ('" +nombre+ "','" +pcedula+ "','" +zfecha+ "')";
dbstatement.executeUpdate(insertarsql); 
//impresion de salidad en respuesta al usuario
out.print("Registro exitoso, Muchas Gracias!!");
%>
<br>
<br>
<br>
<div class= "contenedor_mensaje">
<img class ="mensaje-exitoso" src="Imagenes/MENSAJE_DE_REGISTRO_DE_CURSO.png" alt="mensaje-error">
<br>
<br>
<div class= "boton-exitoso">
<a class="enl_ace" href="HOME36.html">HOME</a>
</div>
</div>
</body>
</html>