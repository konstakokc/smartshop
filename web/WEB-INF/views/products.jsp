<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Products</title>
</head>
<body>
List of Products
<c:if test="${!empty products}">
    <table class="tg">
        <tr>
            <th width="120">ID</th>
            <th width="120">Name</th>
            <th width="120">Price</th>
            <th width="120">Weight</th>
            <th width="100">Dimensions</th>
            <th width="100">Quantity</th>
            <th width="100">Category</th>
            <th width="100"></th>
        </tr>
        <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.weight}</td>
                <td>${product.dimensions}</td>
                <td>${product.stockQuantity}</td>
                <td>${product.category.name}</td>
                <td><a href="<c:url value='/product/${product.id}' />" >Edit</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
