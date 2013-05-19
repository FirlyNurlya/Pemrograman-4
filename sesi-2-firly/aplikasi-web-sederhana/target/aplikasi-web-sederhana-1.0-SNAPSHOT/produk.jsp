
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>SELECT Operation</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/Produk_P4"
     user="root"  password=""/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from produk;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>kode</th>
   <th>nama</th>
   <th>harga</th>
   <th>terakhir update</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.kode}"/></td>
   <td><c:out value="${row.harga}"/></td>
   <td><c:out value="${row.terakhir_update}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>