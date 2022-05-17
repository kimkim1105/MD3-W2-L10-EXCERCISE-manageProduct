<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/15/2022
  Time: 1:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product information</title>
</head>
<body>
<h1>Product information</h1>
<a href="/products">Back to product list</a>
<form method="get">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${product.getName()}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${product.getPrice()}</td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>${product.getDescription()}</td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td>${product.getProducer()}</td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
