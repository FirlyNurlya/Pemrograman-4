<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>

<html lang="id">
<head>
	<title>Belajar JSP</title>
</head>
<body>
	<section>
		<h2><center>Tanggal dan Waktu</center></h2>
			
			<center>
			<%
			   Date dNow = new Date( );
			   SimpleDateFormat dateFormat = new SimpleDateFormat ("EEEE , d MMMM y");
			   SimpleDateFormat timeFormat = new SimpleDateFormat ("HH:mm:ss");
			   out.print( "<h4 align=\"center\">Hari dan tanggal saat ini : " + dateFormat.format(dNow) + "</h4>");
			   out.print( "<h4 align=\"center\">Waktu saat ini :" + timeFormat.format(dNow) + "</h4>");
			%>
			</center>
	</section>
</body>
</html>