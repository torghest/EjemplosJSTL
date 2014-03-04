<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt"%>


<sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" 
url="jdbc:oracle:thin:@localhost:1521:XE" user="system" password="javaoracle"/>


<sql:query var="Empleados">
  SELECT apellido,salario FROM emp
</sql:query>


<table border="1">

    <c:forEach var="NombreColumnas" items="${Empleados.columnNames}">
      <th>${NombreColumnas}</th>
    </c:forEach>

  
      <tr>
      <c:forEach var="Filas" items="${Empleados.rows}">
        <td><c:out value='${Filas.apellido}'/></a></td>
        <td><c:out value='${Filas.salario}'/></td>

       </tr>
      </c:forEach>
  </table>