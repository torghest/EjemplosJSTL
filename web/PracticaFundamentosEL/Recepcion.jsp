<%-- 
    Document   : Recepcion
    Created on : 04-mar-2014, 9:10:14
    Author     : alumno
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:set var="inNombre" value="${param.inNombre}" scope="session"/>
<c:set var="inApellido" value="${param.inApellido}" scope="session"/>
<c:set var="inDomicilio" value="${param.inDomicilio}" scope="session"/>
<c:set var="inCodBanco" value="${param.inCodBanco}" scope="session"/>
<c:set var="inSucursal" value="${param.inSucursal}" scope="session"/>
<c:set var="inDC" value="${param.inDC}" scope="session"/>
<c:set var="inNumCuenta" value="${param.inNumCuenta}" scope="session"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recepcion</title>
    </head>
    <body>
        <div align="center">
            <div style="border: 2px solid; background-color: #EEFF99; display: inline-table; padding: 10px;">
                <h1>Datos recibidos</h1>
                <a href="Confirmacion.jsp">Confirmar</a>
            </div>
        </div>
    </body>
</html>
