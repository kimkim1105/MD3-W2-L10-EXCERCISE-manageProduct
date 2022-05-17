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
    <title>Create product form</title>
</head>
<body>
<h1>Create product</h1>
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
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name" placeholder="Name"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" id="price" placeholder="Price"></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><input type="text" name="description" id="description" placeholder="Description"></td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td><input type="text" name="producer" id="producer" placeholder="Producer"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button>Create</button>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
