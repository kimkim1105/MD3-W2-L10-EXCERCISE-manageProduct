<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/15/2022
  Time: 1:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Delete product</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<p>
    <c:if test="${message!=null}">
        <span>${message}</span>
    </c:if>
</p>
<form method="post">
    <fieldset>
        <legend>Product infomation</legend>
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
            <tr>
                <td></td>
                <td><button>Delete</button></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
