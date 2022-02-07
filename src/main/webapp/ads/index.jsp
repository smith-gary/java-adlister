<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tacgee
  Date: 2/7/22
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Ads</title>
</head>
<body>
    <h1>Ads</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="ad">
            <h3>Title: ${ad.title}</h3>
            <p>Description: ${ad.description}</p>
        </div>
    </c:forEach>


</body>
</html>
