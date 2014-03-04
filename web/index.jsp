<%-- 
    Document   : index
    Created on : 04-mar-2014, 8:26:15
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core_rt" %>
<c:out value="<b>Hola mundo</b>"/><br/>
<c:out value="<b>Hola mundo</b>" escapeXml="true"/><br/>
<c:out value="<b>Hola mundo</b>" escapeXml="false"/><br/>
<hr/>

<c:out value="${variableInexistente}" default="La expresión fallo"/><br/>
<c:out value="${variableInexistente}">
  Por defecto el atributo default va en el cuerpo
</c:out>
<hr/>

<c:set var="variableInexistente" value="Valor de 'variableInexistente'"/>
<c:out value="${variableInexistente}" default="La expresión fallo"/><br/>
<c:out value="${variableInexistente}">
  Por defecto el atributo default va en el cuerpo
</c:out>
<hr/>

<%-- graba la variable cuatro=4 en el ámbito page --%>
<c:set var="cuatro" value="${2 + 2}"/>
<c:set var="cinco" value="5"/>
<c:out value="Suma${cuatro + cinco}"/><br/>
<c:out value="Concatena${cuatro}${cinco}"/>
<hr/>
<%-- equivalente al anterior pero con ámbito session --%>
<c:set var="cuatro" scope="session">
  4+2+1
</c:set>
Muestra el valor de la variable de ambito page no la de session<br/>
<c:out value="${cuatro}"/>
<hr/>

Muestra el valor de la variable de ambito page no la de session<br/>
<c:set var="cuatro2" scope="page">
  4+5-76
</c:set>
<c:set var="cuatro2" scope="session">
  4+2+1
</c:set>
<c:out value="${cuatro2}"/><br/>

Muestra el valor de la variable de ambito session no la de application<br/>
<c:set var="cuatro3" scope="session">
  4+2+1
</c:set>
<c:set var="cuatro3" scope="application">
  4+5-76
</c:set>
<c:out value="${cuatro3}"/>
<hr/>

<%-- equivalente al anterior --%>
<c:set var="cuatro">
  <c:out value="4+9"/>
</c:set>
<c:out value="${cuatro}"/>
