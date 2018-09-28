<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="resources/js/bootstrap.min.js"></script>
    <title>Products</title>
</head>
<body>
<nav class="site-header sticky-top py-1">
    <div class="container d-flex flex-column flex-md-row justify-content-between">
        <a class="py-2" href="<c:url value="/index.jsp"/>">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
        </a>
        <a class="py-2 d-none d-md-inline-block" href="<c:url value="/users"/>">Users</a>
        <a class="py-2 d-none d-md-inline-block" href="<c:url value="/products"/>">Products</a>
        <a class="py-2 d-none d-md-inline-block" href="<c:url value="/categories"/>">Categories</a>
        <a class="py-2 d-none d-md-inline-block" href="<c:url value="/addresses"/>">Addresses</a>
        <a class="py-2 d-none d-md-inline-block" href="<c:url value="/orders"/>">Orders</a>
    </div>
</nav>
<h2>List of Products</h2>
<c:if test="${!empty products}">
    <table class="table">
        <thead>
        <tr>
            <th scope="col" width="120">ID</th>
            <th scope="col" width="120">Name</th>
            <th scope="col" width="120">Price</th>
            <th scope="col" width="120">Weight</th>
            <th scope="col" width="100">Dimensions</th>
            <th scope="col" width="100">Quantity</th>
            <th scope="col" width="100">Category</th>
            <th scope="col" width="100"></th>
        </tr>
        </thead>
        <tbody>
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
        </tbody>
    </table>
</c:if>
</body>
</html>
