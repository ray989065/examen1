<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Sep 10, 2014, 12:21:27 PM
    Author     : Raymundo
--%>
<sql:query var="carreras" dataSource="jdbc/Tec-Ray">
    SELECT ClaveCarrera FROM Carrera
</sql:query>
    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tec-Raymundo</title>
    </head>
    <body>
        <h1>Bienvendio al sistema</h1>
          <h1>Raymundo Daniel Peña Caffarel</h1>
            <h1>A00989065</h1>
            <form action="response.jsp">
                 <strong>Seleciona una carrera:</strong>
                 <select name="ClaveCarrera">
                        <c:forEach var="row" items="${carreras.rowsByIndex}">
            <c:forEach var="column" items="${row}">
                <option value="<c:out value="${column}"/>"><c:out value="${column}"/></option>
            </c:forEach>
        </c:forEach>
                 </select>
                 <input type="submit" value="submit" />
            </form>
            
    </body>
</html>
