<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : response
    Created on : Sep 10, 2014, 12:31:49 PM
    Author     : Raymundo
--%>
<sql:query var="counselorQuery" dataSource="jdbc/Tec-Ray">
    SELECT * FROM Director, Carrera WHERE Director.Carrera= ? <sql:param value="${param.ClaveCarrera}"/>
</sql:query>
    <c:set var="counselorDetails" value="${counselorQuery.rows[0]}"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tec-Ray</title>
    </head>
    <body>
        <table border="0">
    <thead>
        <tr>
           
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><strong>Nombre </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">${counselorDetails.Nombre}</span></td>
        </tr>
        <tr>
            <td><strong>Carrera: </strong></td>
            <td>${counselorDetails.Carrera}
                <br>
            </td>
        </tr>
        <tr>
        </tr>
    </tbody>
</table>
    </body>
</html>
