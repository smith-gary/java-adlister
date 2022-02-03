<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
    <%@ include file="partials/links.jsp" %>
</head>
<body>
    <%@ include file="partials/navbar.jsp" %><br>
    <h2 class="text-center">Please Login</h2><br>
    <form class="text-center" action="login.jsp" method="POST">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Username goes here...">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Password goes here...">
            <input type="submit" value="Submit">
    </form>

    <%--    <c:if test="${param.username == 'admin' && param.password == 'password'}">--%>
<%--        <% response.sendRedirect("/profile.jsp"); %>--%>
<%--    </c:if>--%>
<%--    <c:if test="${param.username == !'admin'}">--%>
<%--        <h2>Incorrect Credentials</h2>--%>
<%--        <% response.sendRedirect("/login.jsp"); %>--%>
<%--    </c:if>--%>

    <c:choose>

        <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
            <% response.sendRedirect("/profile.jsp"); %>
        </c:when>

    </c:choose>


</body>
</html>
