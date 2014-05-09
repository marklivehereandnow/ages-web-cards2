<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : newjsp
    Created on : May 9, 2014, 5:22:40 PM
    Author     : mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ages Cards and Img</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Cards from database directly, ages.CARDS</h1>
        <h3>ref: https://netbeans.org/kb/docs/web/mysql-webapp.html </h3>

        <sql:query var="result" dataSource="jdbc/myDatasource">
            SELECT  * FROM CARDS
        </sql:query>

        <table border="1">
            <!-- column headers -->
            <tr>
                <th> info</th>
                <th> img</th>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${result.rowsByIndex}">
                <tr>

                    <td>
                        <c:out value="${row[0]}"/><br>
                        <c:out value="${row[1]}"/><br>
                        <c:out value="${row[2]}"/><br>
                        <c:out value="${row[3]}"/><br>
                        <c:out value="${row[4]}"/><br>
                        <c:out value="${row[5]}"/><br>
                        <c:out value="${row[6]}"/><br>
                        <c:out value="${row[7]}"/><br>
                        <c:out value="${row[8]}"/><br>
                        <c:out value="${row[9]}"/><br>


                    </td>    

                    <td> <img src="http://2nd2go.org/ages/img/p<c:out value="${row[0]}"/>.jpg"/> </td>

                </tr>
            </c:forEach>
        </table>

    </body>
</html>
