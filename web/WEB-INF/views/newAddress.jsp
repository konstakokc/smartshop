<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="resources/js/bootstrap.min.js"></script>
    <title>New Address</title>
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
<c:url var="addAction" value="/addAddress/${user.id}" />
<form:form action="${addAction}" modelAttribute="address" method="post">
    <table>
        <tr>
            <td><form:label path="country"><spring:message text="Country"/></form:label></td>
            <td><form:input path="country" /></td>
        </tr>
        <tr>
            <td><form:label path="city"><spring:message text="City"/></form:label></td>
            <td><form:input path="city" /></td>
        </tr>
        <tr>
            <td><form:label path="postalCode"><spring:message text="Postal Code"/></form:label></td>
            <td><form:input path="postalCode" /></td>
        </tr>
        <tr>
            <td><form:label path="street"><spring:message text="Street"/></form:label></td>
            <td><form:input path="street" /></td>
        </tr>
        <tr>
            <td><form:label path="building"><spring:message text="Building"/></form:label></td>
            <td><form:input path="building" /></td>
        </tr>
        <tr>
            <td><form:label path="apartment"><spring:message text="Apartment"/></form:label></td>
            <td><form:input path="apartment" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty address.country}">
                    <input type="submit" value="<spring:message text="Edit Address"/>" />
                </c:if>
                <c:if test="${empty address.country}">
                    <input type="submit" value="<spring:message text="Add Address"/>" />
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
