<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Order Info</title>
</head>
<body>
<c:url var="addAction" value="/newOrder" />
<form:form action="${addAction}" modelAttribute="order" method="get">

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
            <td><form:input path="shipmentMethod" /></td>
        </tr>
        <tr>
            <td><form:label path="paymentMethod"><spring:message text="payment Method"/></form:label></td>
            <td><form:input path="paymentMethod" /></td>
        </tr>
        <tr>
            <td><form:label path="paymentStatus"><spring:message text="paymentStatus"/></form:label></td>
            <td><form:input path="paymentStatus" /></td>
        </tr>
        <tr>
            <td><form:label path="orderStatus"><spring:message text="order Status"/></form:label></td>
            <td><form:input path="orderStatus" /></td>
        </tr>
        <c:forEach items="${order.orderItems}" var="orderItem">
            <tr>
                <td>${orderItem.product}</td>
                <td>${orderItem.price}</td>
                <td>${orderItem.quantity}</td>
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
