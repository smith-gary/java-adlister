<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tacgee
  Date: 2/6/22
  Time: 3:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Results</title>
</head>
<body>
    <c:choose>
        <c:when test="${result}">
            <h2>Good Guess</h2>
        </c:when>

        <c:otherwise>
            <h2>No Luck</h2>
        </c:otherwise>
    </c:choose>
    <a href="/guess">Return</a>
</body>
</html>
