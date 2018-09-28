<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="resources/js/bootstrap.min.js"></script>
    <title>User Info</title>
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
<c:url var="addAction" value="/newAddress" />

<%--<div class="container col-md-4 offset-md-3">--%>
    <%--<form action="${addAction}" method="get">--%>
        <%--<h2> </h2>--%>
        <%--<div class="form-group">--%>
            <%--<label for="" ></label>--%>
            <%--<input type="" class="form-control" id="" name="" value="">--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>


<div class="container col-md-4 offset-md-3">
    <form action="${addAction}" method="get">
        <h2> User information</h2>
        <div class="form-group">
            <label for="id"></label>
            <input type="text" class="form-control" id="id" name="id" value="${user.id}" readonly>

            <label for="user.firstName" ></label>
            <input type="text" class="form-control" id="user.firstName" name="user.firstName" value="${user.firstName}">

            <label for="user.lastName" ></label>
            <input type="text" class="form-control" id="user.lastName" name="user.lastName" value="${user.lastName}">

            <label for="user.birthdate" ></label>
            <input type="date" class="form-control" id="user.birthdate" name="user.birthdate" value="${user.birthdate}">

            <label for="user.email" ></label>
            <input type="email" class="form-control" id="user.email" name="user.email" value="${user.email}">

            <div class="row">
            <c:forEach items="${user.addresses}" var="address">
                    <td>${address.id}</td>
                    <td>${address.country}</td>
                    <td>${address.city}</td>
                    <td>${address.postalCode}</td>
                    <td>${address.street}</td>
                    <td>${address.building}</td>
                    <td>${address.apartment}</td>
                        <%--<td><a href="<c:url value='/address/returnPage/${address.addressID}' />" >Delete</a></td>--%>
            </c:forEach>
            </div>
            <c:forEach items="${user.orders}" var="order">
                <tr>
                    <td>${order.id}</td>
                    <td>${order.orderStatus}</td>
                    <td>${order.placedOn}</td>
                </tr>
            </c:forEach>

            <button type="submit" class="btn btn-primary  btn-md">Add new address</button>
        </div>
    </form>
</div>

<%--<form:form action="${addAction}" modelAttribute="user" method="get">--%>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<td><form:label path="id"><spring:message text="First Name"/></form:label></td>--%>
            <%--<td><form:input path="id" readonly="true" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="firstName"><spring:message text="First Name"/></form:label></td>--%>
            <%--<td><form:input path="firstName" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="lastName"><spring:message text="Last Name"/></form:label></td>--%>
            <%--<td><form:input path="lastName" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="birthdate"><spring:message text="Birthdate"/></form:label></td>--%>
            <%--<td><form:input path="birthdate" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="email"><spring:message text="E-mail"/></form:label></td>--%>
            <%--<td><form:input path="email" /></td>--%>
        <%--</tr>--%>
        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><form:label path="password"><spring:message text="Password"/></form:label></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><form:password path="password" /></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
        <%--<c:forEach items="${user.addresses}" var="address">--%>
            <%--<tr>--%>
                <%--<td>${address.id}</td>--%>
                <%--<td>${address.country}</td>--%>
                <%--<td>${address.city}</td>--%>
                <%--<td>${address.postalCode}</td>--%>
                <%--<td>${address.street}</td>--%>
                <%--<td>${address.building}</td>--%>
                <%--<td>${address.apartment}</td>--%>
                    <%--&lt;%&ndash;<td><a href="<c:url value='/address/returnPage/${address.addressID}' />" >Delete</a></td>&ndash;%&gt;--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
        <%--<c:forEach items="${user.orders}" var="order">--%>
            <%--<tr>--%>
                <%--<td>${order.id}</td>--%>
                <%--<td>${order.orderStatus}</td>--%>
                <%--<td>${order.placedOn}</td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<input type="submit" value="<spring:message text="Add new Address"/>" />--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form:form>--%>
</body>
</html>
