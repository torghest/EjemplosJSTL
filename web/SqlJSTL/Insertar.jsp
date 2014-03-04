<%-- 
    Document   : Insertar
    Created on : 04-mar-2014, 11:08:00
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql_rt"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Departamento</title>
    </head>
    <body>
        <div align="center">
            <div style="border: 2px solid; background-color: #EEFF99; display: inline-table; padding: 10px;">
                <table>
                    <form name="form" action="Insertar.jsp" method="post">
                    <tr>
                        <td colspan="2">
                            <h3>Insertar Departamento</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DEPT_NO:
                        </td>
                        <td>
                            <input type="text" name="DEPT_NO"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DNOMBRE:
                        </td>
                        <td>
                            <input type="text" name="DNOMBRE"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            LOC:
                        </td>
                        <td>
                            <input type="text" name="LOC"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <input type="submit" value="Grabar"/>
                        </td>
                    </tr>
                    <c:set var="DEPT_NO" value="${param.DEPT_NO}"/>
                    <c:set var="DNOMBRE" value="${param.DNOMBRE}"/>
                    <c:set var="LOC" value="${param.LOC}"/>
                    <c:if test="${(DEPT_NO != null)&&(DNOMBRE != null)&&(LOC != null)}">
                        <sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" 
                            url="jdbc:oracle:thin:@localhost:1521:XE"
                            user="system" password="javaoracle"/>
                        <sql:update var="n">
                            INSERT INTO dept VALUES ('${DEPT_NO}','${DNOMBRE}','${LOC}')
                        </sql:update>
                        <tr>
                            <td colspan="2">
                                Insertado <c:out value="${n}"/> registro
                            </td>
                        </tr>
                    </c:if>
                    </form>
                </table>
                <hr/>    
                <table align="center" border="2" bgcolor="#F9F9F9">
                    <sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" 
                        url="jdbc:oracle:thin:@localhost:1521:XE"
                        user="system" password="javaoracle"/>
                    <sql:query var="dept">
                        Select dept_no, dnombre, loc from dept
                    </sql:query>
                    <tr>
                        <c:forEach var="NombreColumnas" items="${dept.columnNames}">
                            <td bgcolor="#333333">
                                <font color="#CCCCCC">
                                ${NombreColumnas}
                                </font>
                            </td>
                        </c:forEach>
                    </tr>
                    <c:forEach items="${dept.rowsByIndex}" var="row">
                        <tr>
                            <c:forEach items="${row}" var="dato">
                                <td>
                                    ${dato}
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
