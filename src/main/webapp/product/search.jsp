<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/15/2022
  Time: 6:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Find product by name</title>
</head>
<body>
<form method="post">
    <h1>Find product by name</h1>
    Enter name:
    <input type="text" name="name" id="name" placeholder="Name"><br>
    <input type="submit" value="Find">
    <table border="1">
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Price</td>
            <td>Description</td>
            <td>Producer</td>
        </tr>
        <c:forEach items='${requestScope["products"]}' var="product">
            <tr>
                <td>${product.getId()}</td>
                <td>${product.getName()}</td>
                <td>${product.getPrice()}</td>
                <td>${product.getDescription()}</td>
                <td>${product.getProducer()}</td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
