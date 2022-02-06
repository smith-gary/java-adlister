<%--
  Created by IntelliJ IDEA.
  User: tacgee
  Date: 2/6/22
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guesser</title>
</head>
<body>
<h2>Type a number between 1 - 3</h2>
<form action="/guess" method="post">
    <label for="guess"></label>
  <input type="text" name="guess" id="guess">
    <input type="submit" value="Submit">

<%--  <button name="guess" value="2">2</button>--%>
<%--  <button name="guess" value="3">3</button>--%>
</form>
</body>
</html>
