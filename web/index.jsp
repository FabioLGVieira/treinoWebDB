<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
   
--%>
<sql:query var="subjects" dataSource="jdbc/myTreino">
    SELECT subject_id, name FROM Subject
</sql:query>
    
<table border="1">
    <!-- column headers -->
    <tr>
    <c:forEach var="columnName" items="${subjects.columnNames}">
        <th><c:out value="${columnName}"/></th>
    </c:forEach>
</tr>
<!-- column data -->
<c:forEach var="row" items="${subjects.rowsByIndex}">
    <tr>
    <c:forEach var="column" items="${row}">
        <td><c:out value="${column}"/></td>
    </c:forEach>
    </tr>
</c:forEach>
</table>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Home treino</title>
    </head>
    <body>
        <h1>Bem-vindo à IFPWAFCAD, a Associação internacional de Ex-Lutadores Profissionais para Aconselhamento e Desenvolvimento!</h1><table border="0">
            <thead>
                <tr>
                    <th>IFPWAFCAD offers expert counseling in a wide range of fields.</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>To view the contact details of an IFPWAFCAD certified former
                        professional wrestler in your area, select a subject below:</td>
                </tr>
                <tr>
                    <td><form action="response.jsp">
                            <strong>Select a subject:</strong>
                            <select name="subject_id">
                                <option></option>
                                <option></option>
                            </select>
                            <input type="submit" value="submit1" />
                        </form></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
