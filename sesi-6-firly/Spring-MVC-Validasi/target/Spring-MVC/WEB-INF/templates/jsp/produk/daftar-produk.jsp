<%-- 
    Document   : form
    Created on : May 3, 2013, 1:55:27 PM
    Author     : Febry Fairuz
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Daftar Produk</title>
        <style>
            body{background: #e6f6f9;width:50%;margin:0 auto 0 auto;font-family: calibri}
            section{padding:20px;margin-top: 50px;background: RGBA(30,140,190,0.6);border-radius: 10px; }
            h1{color:white;font-size: 30px;margin-top: 0px}
            table{border-collapse: collapse;margin:10px auto 40px auto;border: 1px solid orange;background: white;}
            table th,td{padding: 10px}
            table th{background: orange;color:white}
            a{text-decoration: none;text-transform: capitalize}
            a.button{background: #fafafa;padding:10px;border-radius: 5px;color: #1e8cbe;font-weight: bold}
        </style>
    </head>
    <body>
        <section>
        <h1>Daftar Produk</h1>     
        <c:choose>
            <c:when test="${empty daftarProduk}">
                <h3>Tidak ada data</h3>
            </c:when>
            <c:otherwise>
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kode</th>
                            <th>Nama</th>
                            <th>Harga</th>
                            <th>Terakhir Update</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${daftarProduk}" var="p" varStatus="i">
                        <tr>
                            <td>${i.count}</td>
                            <td>${p.kode}</td>
                            <td>${p.nama}</td>
                            <td><fmt:formatNumber value="${p.harga}" type="number"></fmt:formatNumber></td>
                            <td><fmt:formatDate value="${p.terakhirUpdate}" pattern="EEE, dd MMM yyyy"></fmt:formatDate></td>
                            <td>
                                <a href="input-produk?id=${p.id}">edit</a> | 
                                <a href="hapus?id=${p.id}">hapus</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>          
            </c:otherwise>
        </c:choose>          
        <a href="input-produk" class="button">Tambah Data</a> 
        </section>
    </body>
</html>