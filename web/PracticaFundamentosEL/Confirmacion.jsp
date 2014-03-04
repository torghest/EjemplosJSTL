<%-- 
    Document   : Confirmacion
    Created on : 04-mar-2014, 9:10:30
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:out value="${inNombre}"/><br/>
        <c:out value="${inApellido}"/><br/>
        <c:out value="${inDomicilio}"/><br/>
        <c:out value="${inCodBanco}"/><br/>
        <c:out value="${inSucursal}"/><br/>
        <c:out value="${inDC}"/><br/>
        <c:out value="${inNumCuenta}"/>
    </body>
</html>
