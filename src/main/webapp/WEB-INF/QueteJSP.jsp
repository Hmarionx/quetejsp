<%--
  Created by IntelliJ IDEA.
  User: hm
  Date: 23/12/18
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quete JSP</title>
</head>
<body>
<h2>Quete JSP</h2>
<p>Mon adresse IP : <%= request.getAttribute("myIp") %></p>
<p>La date du jour : <%= request.getAttribute("myDate") %></p>
</body>
</html>
