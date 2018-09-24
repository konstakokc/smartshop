<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:url var="addAction" value="/addParameter/${productId}" />
<form:form method="post" action="${addAction}" modelAttribute="parameter">
    <table>
        <tr>
            <th>Key</th>
            <th>Value</th>
        </tr>
            <tr>
                    <td><form:label path="key"><spring:message text="Name"/></form:label></td>
                    <td><form:input path="left"/></td>

                    <td><form:label path="value"><spring:message text="Value"/></form:label></td>
                    <td><form:input path="right"/></td>
            </tr>
    </table>
    <br/>

    <input type="submit" value="Save" />

</form:form>
</body>
</html>
