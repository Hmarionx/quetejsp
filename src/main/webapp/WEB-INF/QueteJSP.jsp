<%--
  Created by IntelliJ IDEA.
  User: hm
  Date: 23/12/18
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Quete JSP</title>
</head>
<body>
<h2>Quete JSP</h2>
<p>Mon adresse IP : <%= request.getAttribute("myIp") %></p>
<p>La date du jour : <%= request.getAttribute("myDate") %></p>
<p>Suite de Fibonacci : </p>
<tr>
    <c:forEach items="${fibonacci}" varStatus="loop">
        <td>${fibonacci[loop.index]}</td>
    </c:forEach>
</tr>
</body>
</html>
