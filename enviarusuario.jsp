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
String papellido = request.getParameter("introducir_apellido");
String zedad = request.getParameter("introducir_edad");
String password = request.getParameter("introducir_password");
//valores enviados a la base de datos
String insertarsql = "INSERT INTO datosuser (nombre, apellido, edad, contrasena) VALUES ('" +nombre+ "','" +papellido+ "','" +zedad+ "','" +password+ "')";
dbstatement.executeUpdate(insertarsql); 
//impresion de salidad en respuesta al usuario
out.print("Registro exitoso, Muchas Gracias!!");
%>
<br>
<br>
<br>
<div class= "contenedor_mensaje">
<img class ="mensaje-exitoso" src="Imagenes/MENSAJE_DE_REGISTRO_DE_CURSO3.png" alt="mensaje-error">
<br>
<br>
<div class= "boton-exitoso">
<a class="enl_ace" href="LOGGIN.html">SIGN IN</a>
</div>
</div>
</body>
</html>