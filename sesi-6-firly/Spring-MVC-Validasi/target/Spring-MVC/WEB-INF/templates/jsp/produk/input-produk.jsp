<%-- 
    Document   : form
    Created on : May 3, 2013, 1:55:27 PM
    Author     : Febry Fairuz
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Produk</title>
        <style>
            body{background: #e6f6f9;width:50%;margin:0 auto 0 auto;font-family: calibri}
            section{padding:20px;margin-top: 50px;background: RGBA(30,140,190,0.6);border-radius: 10px; }
            h1{color:white;font-size: 30px;margin-top: 0px}
            input{
                border-radius:5px;
                padding:10px;
                width:300px;
                border:1px solid #1e8cbe;
                margin-bottom:10px;
            }
            input:focus{
                border-radius:10px;
                border:1px solid #22be1e;
                box-shadow: 0px 1px 5px 0px #2c2c2c;
                outline: none
            }
            .button{
                width:150px;
                clear:both; 
                margin:0px 5px 0 0px;
                color:#fff;
                background: teal;
                border-radius:10px;
                font-family:arial;
                font-size:14px;
                font-weight: bold;
                padding:15px;
                text-align: center;
                cursor:pointer; 
                border:none;
                text-transform:capitalize;                
            }
        </style>
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