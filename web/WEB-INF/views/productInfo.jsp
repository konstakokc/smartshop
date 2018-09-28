<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="resources/js/bootstrap.min.js"></script>
    <title>Product Info</title>
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
<c:url var="addAction" value="/newParameter" />
<form:form action="${addAction}" modelAttribute="product" method="get">
    <table>
        <tr>
            <td><form:label path="id"><spring:message text="Id"/></form:label></td>
            <td><form:input path="id" readonly="true" /></td>
        </tr>
        <tr>
            <td><form:label path="name"><spring:message text="Name"/></form:label></td>
            <td><form:input path="name" /></td>
        </tr>
        <tr>
            <td><form:label path="price"><spring:message text="Price"/></form:label></td>
            <td><form:input path="price" /></td>
        </tr>
        <tr>
            <td><form:label path="weight"><spring:message text="Weight"/></form:label></td>
            <td><form:input path="weight" /></td>
        </tr>
        <tr>
            <td><form:label path="dimensions"><spring:message text="Dimensions"/></form:label></td>
            <td><form:input path="dimensions" /></td>
        </tr>
            <%--Insert CatSelect Here--%>
        <tr>
            <td><form:label path="stockQuantity"><spring:message text="Quantity"/></form:label></td>
            <td><form:input path="stockQuantity" /></td>
        </tr>
        <tr>
            <td><form:label path="category.id"><spring:message text="Category"/></form:label></td>
            <td><form:input path="category.id" /></td>
        </tr>
        <c:forEach items="${product.parameters}" var="parameter">
            <tr>
                <td>${parameter.key}</td>
                <td>${parameter.value}</td>
                    <%--<td><a href="<c:url value='/address/returnPage/${address.addressID}' />" >Delete</a></td>--%>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="2">
                <input type="submit" value="<spring:message text="Add parameter"/>" />
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
