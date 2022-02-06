<%--
  Created by IntelliJ IDEA.
  User: tacgee
  Date: 2/4/22
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick Color</title>
</head>
<body>
<form action="/pickcolor" method="post">
    <label for="color">Enter your favorite color</label>
    <input type="text" name="color" id="color"/>
    <input type="submit" value="submit"/>
</form>

</body>
</html>
