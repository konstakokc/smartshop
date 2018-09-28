<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="resources/js/bootstrap.min.js"></script>
    <title>Addresses</title>
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
<h2>List of Addresses</h2>
<c:if test="${!empty addresses}">
    <table class="table">
        <thead>
        <tr>
            <th scope="col" width="120">ID</th>
            <th scope="col" width="120">Country</th>
            <th scope="col" width="120">City</th>
            <th scope="col" width="120">PC</th>
            <th scope="col" width="100">Street</th>
            <th scope="col" width="100">Building</th>
            <th scope="col" width="60">Apartment</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${addresses}" var="address">
            <tr>
                <td>${address.id}</td>
                <td>${address.country}</td>
                <td>${address.city}</td>
                <td>${address.postalCode}</td>
                <td>${address.street}</td>
                <td>${address.building}</td>
                <td>${address.apartment}</td>
                <%--<td><a href="<c:url value='/address/returnPage/${address.addressID}' />" >Delete</a></td>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
