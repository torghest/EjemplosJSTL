<%-- 
    Document   : index
    Created on : 04-mar-2014, 10:53:27
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
            <div style="text-align: left; border: 2px solid; background-color: #EEFF99; display: inline-table; padding: 10px;">
                <sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:XE" user="system" password="javaoracle"/>
                <sql:query var="Empleados">
                  SELECT apellido,salario FROM emp
                </sql:query>
                <ul>
                <c:forEach items="${Empleados.rows}" var="row">
                    <li>
                        <c:out value="${row.apellido}"/> - 
                        <c:out value="${row.salario}"/> 
                    </li>
                </c:forEach>
                </ul>
            </div>
        </div>
    </body>
</html>
