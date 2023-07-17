<html>
<head>
<%@page import="java.sql.*" %>
<link href="estilo.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
    String zuser=request.getParameter("introducir_usuario");
    String zcontrasena=request.getParameter("introducir_password");
    Class.forName("com.mysql.jdbc.Driver");
        Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectofinal","root","");
        try
        {
            PreparedStatement consulLog  = dbconect.prepareStatement("SELECT *FROM datosuser WHERE nombre=? AND contrasena=? ");
            consulLog.setString(1,zuser);
            consulLog.setString(2,zcontrasena);
            ResultSet resultado = consulLog.executeQuery();
            if(resultado.next())
                response.sendRedirect("HOME36.html");
            else
            	out.print("Error de login - USUARIO INCORRECTO");
            //response.sendRedirect("LOGGIN.html");
        } catch (Exception e)
        {
            out.println("--ERROR--<br>");
            out.println("--Consulta Invalida--");
        }
%>
<br>
<br>
<br>
<div class= "contenedor_mensaje">
<img class ="mensaje-error" src="Imagenes/MENSAJE_DE_ERROR2.png" alt="mensaje-error">
<br>
<img class ="logo-error" src="Imagenes/LOGO_DE_ERROR.png" alt="mensaje-error">
<br>
<div class= "boton-error">
<a class="enl_ace" href="REG_USUARIOS.html">REGISTER</a>
</div>
</div>
</body>
</html>