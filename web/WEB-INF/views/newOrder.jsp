<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <script src="resources/js/bootstrap.min.js"></script>
    <title>New Order</title>
</head>
<body>
<c:set value="<%=smartshop.model.entity.Utils.ShipmentMethod.values()%>" var="shipmentMethods"/>
<c:set value="<%=smartshop.model.entity.Utils.PaymentMethod.values()%>" var="paymentMethods"/>
<c:set value="<%=smartshop.model.entity.Utils.PaymentStatus.values()%>" var="paymentStatuses"/>
<c:set value="<%=smartshop.model.entity.Utils.OrderStatus.values()%>" var="orderStatuses"/>

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

<c:url var="addAction" value="/addOrder" />
<div class="container col-md-4 offset-md-3">
<form action="${addAction}" method="post" role="form">
    <h2>New Order</h2>

    <div class="form-group">
    <%--Order ID--%>
    <input type="hidden" id="id" name="id" value="${order.id}">

    <%--User ID--%>
    <label for="order.user.id" class="control-label" >Order for: ${order.user.firstName}</label>
    <input type="text" class="form-control" id="order.user.id" name="order.user.id" value="${order.user.id}">

    <%--Address--%>
    <label for="address" class="control-label">Address</label>
    <select id="address" name="address" class="form-control ">
    <c:forEach items="${order.user.addresses}" var="address">
            <option value="${address.id}">${address}</option>
    </c:forEach>
    </select>

    <%--Date placedOn--%>
    <label for="placedOn" class="control-label" hidden >Order date</label>
    <input type="hidden" id="placedOn" class="form-control" value="${order.placedOn}">

    <%--Total price--%>
    <label for="order.totalPrice" class="control-label " >Total price</label>
    <input type="text" class="form-control " id="order.totalPrice" name="order.totalPrice" value="${order.totalPrice}" readonly>

    <%--Shipment method--%>
    <label for="shipmentMethod" class="control-label">Shipment method</label>
    <select id="shipmentMethod" name="shipmentMethod" class="form-control ">
    <c:forEach items="${shipmentMethods}" var="method">
            <option value="${method.ordinal()}">${method.name()}</option>
    </c:forEach>
    </select>

    <%--Payment method--%>
    <label for="paymentMethod" class="control-label">Payment method</label>
    <select id="paymentMethod" name="paymentMethod" class="form-control ">
    <c:forEach items="${paymentMethods}" var="method">
            <option value="${method.ordinal()}">${method.name()}</option>
    </c:forEach>
    </select>

    <%--Payment status--%>
    <label for="paymentStatus" class="control-label">Payment Status</label>
    <select id="paymentStatus" name="paymentStatus" class="form-control ">
    <c:forEach items="${paymentStatuses}" var="status">
            <option value="${status.ordinal()}">${status.name()}</option>
    </c:forEach>
    </select>

    <%--Order status--%>
    <label for="orderStatus" class="control-label">Order Status</label>
    <select id="orderStatus" name="orderStatus" class="form-control ">
    <c:forEach items="${orderStatuses}" var="status">
            <option value="${status.ordinal()}">${status.name()}</option>
    </c:forEach>
    </select>

    </div>
    <button type="submit" class="btn btn-primary  btn-md">Order</button>
</form>
</div>

<%--<form:form action="${addAction}" modelAttribute="order" method="post">--%>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<td><form:label path="id"><spring:message text="Id"/></form:label></td>--%>
            <%--<td><form:input path="id" readonly="true" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="user.id"><spring:message text="User name: ${order.user.firstName}"/></form:label></td>--%>
            <%--<td><form:input path="user.id" readonly="true" /></td>--%>
        <%--</tr>--%>

        <%--<tr>--%>
            <%--<td><form:label path="address"><spring:message text="Address"/></form:label></td>--%>
            <%--<td><form:select path="address">--%>
                <%--<c:forEach items="${order.user.addresses}" var="address">--%>
                    <%--<form:option value="${address}">${address}</form:option>--%>
                <%--</c:forEach>--%>
            <%--</td></form:select>--%>
        <%--</tr>--%>

        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><form:label path="placedOn"><spring:message text="Placed on"/></form:label></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><form:input path="placedOn" /></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
        <%--<tr>--%>
            <%--<td><form:label path="totalPrice"><spring:message text="Total Price"/></form:label></td>--%>
            <%--<td><form:input path="totalPrice" /></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="shipmentMethod"><spring:message text="shipment Method"/></form:label></td>--%>
            <%--<td><form:select path="shipmentMethod">--%>
                <%--<c:forEach items="${shipmentMethods}" var="method">--%>
                    <%--<form:option value="${method}">${method.name()}</form:option>--%>
                <%--</c:forEach>--%>
            <%--</td></form:select>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td><form:label path="paymentMethod"><spring:message text="payment Method"/></form:label></td>--%>
            <%--<td><form:select path="paymentMethod">--%>
                <%--<c:forEach items="${paymentMethods}" var="method">--%>
                    <%--<form:option value="${method}">${method.name()}</form:option>--%>
                <%--</c:forEach>--%>
            <%--</td></form:select>--%>
        <%--</tr>--%>
        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><form:label path="paymentStatus"><spring:message text="paymentStatus"/></form:label></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><form:select path="paymentStatus">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<c:forEach items="${paymentStatuses}" var="status">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<form:option value="${status}">${status.name()}</form:option>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td></form:select>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><form:label path="orderStatus"><spring:message text="order Status"/></form:label></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><form:select path="orderStatus">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<c:forEach items="${orderStatuses}" var="status">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<form:option value="${status}">${status.name()}</form:option>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td></form:select>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>

        <%--&lt;%&ndash;Order Items&ndash;%&gt;--%>

        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--&lt;%&ndash;<c:if test="${order.id != 0}">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<input type="submit" value="<spring:message text="Edit Product"/>" />&ndash;%&gt;--%>
                <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
                <%--<input type="submit" value="<spring:message text="Place order"/>" />--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form:form>--%>

</body>
</html>