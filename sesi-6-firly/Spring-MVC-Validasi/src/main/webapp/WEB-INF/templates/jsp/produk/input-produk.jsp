
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Produk</title>
        
    </head>
    <body>
        <section>
        <h1>Tambah Produk</h1>       
        <spring:form modelAttribute="produk">
            <table>
                <tbody>
                    <tr>
                        <td>Kode</td>
                        <td>
                            <spring:input path="kode"/>
                        </td>
                        <td>
                            <spring:errors path="kode" />                            
                        </td>
                    </tr>
                    <tr>
                        <td>Nama</td>
                        <td>
                            <spring:input path="nama"/>
                        </td>
                        <td>
                            <spring:errors path="nama" />    
                        </td>
                    </tr>
                    <tr>
                        <td>Harga</td>
                        <td>
                            <spring:input path="harga"/>
                        </td>
                        <td>
                            <spring:errors path="harga" />    
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"> <input type="submit" value="Simpan"> </td>
                    </tr>
                </tbody>
            </table>
        </spring:form>
        </section>
    </body>
</html>