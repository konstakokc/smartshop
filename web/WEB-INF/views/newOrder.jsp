<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>new Order</title>
</head>
<body>
<c:set value="<%=smartshop.model.entity.Utils.ShipmentMethod.values()%>" var="shipmentMethods"/>
<c:set value="<%=smartshop.model.entity.Utils.PaymentMethod.values()%>" var="paymentMethod"/>
<c:set value="<%=smartshop.model.entity.Utils.PaymentStatus.values()%>" var="paymentStatus"/>
<c:set value="<%=smartshop.model.entity.Utils.OrderStatus.values()%>" var="orderStatus"/>

<c:url var="addAction" value="/addOrder" />
<form:form action="${addAction}" modelAttribute="order" method="post">
    <table>
        <tr>
            <td><form:label path="id"><spring:message text="Id"/></form:label></td>
            <td><form:input path="id" readonly="true" /></td>
        </tr>
        <tr>
            <td><form:label path="userId"><spring:message text="User id"/></form:label></td>
            <td><form:input path="user.id" /></td>
        </tr>
        <tr>
            <td><form:label path="placedOn"><spring:message text="Placed on"/></form:label></td>
            <td><form:input path="placedOn" /></td>
        </tr>
        <tr>
            <td><form:label path="totalPrice"><spring:message text="Total Price"/></form:label></td>
            <td><form:input path="totalPrice" /></td>
        </tr>
        <tr>
            <td><form:label path="shipmentMethod"><spring:message text="shipment Method"/></form:label></td>
            <form:select path="shipmentMethod">
                <c:forEach items="${shipmentMethods}" var="method">
                    <form:option value="${method}">${method.name()}</form:option>
                </c:forEach>
            </form:select>
        </tr>
        <tr>
            <td><form:label path="paymentMethod"><spring:message text="payment Method"/></form:label></td>
            <form:select path="paymentMethod">
                <c:forEach items="${paymentMethod}" var="method">
                    <form:option value="${method}">${method.name()}</form:option>
                </c:forEach>
            </form:select>
        </tr>
        <tr>
            <td><form:label path="paymentStatus"><spring:message text="paymentStatus"/></form:label></td>
            <form:select path="paymentStatus">
                <c:forEach items="${paymentStatus}" var="status">
                    <form:option value="${status}">${status.name()}</form:option>
                </c:forEach>
            </form:select>
        </tr>
        <tr>
            <td><form:label path="orderStatus"><spring:message text="order Status"/></form:label></td>
            <form:select path="orderStatus">
                <c:forEach items="${orderStatus}" var="status">
                    <form:option value="${status}">${status.name()}</form:option>
                </c:forEach>
            </form:select>
        </tr>

        <%--Order Items--%>

        <tr>
            <td colspan="2">
                <c:if test="${!empty order.id}">
                    <input type="submit" value="<spring:message text="Edit Product"/>" />
                </c:if>
                <c:if test="${empty order.id}">
                    <input type="submit" value="<spring:message text="Add Product"/>" />
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>