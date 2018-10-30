<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <style> <%@include file="/WEB-INF/css/main.css"%></style>
</head>
<body>
<h1>eBuyApp || <a href="http://localhost:8080/productList"><spring:message code="productList.form.products"/></a> || <a href="http://localhost:8080/"><spring:message code="welcome.page"/></a></h1>
<a href="?language=en" >English</a>|<a href="?language=fr" >Fran&ccedil;ais</a>

<div id="listProduct">
    <table>
        <tr>
            <th><spring:message code="userList.form.user"/></th>
            <th><spring:message code="userList.form.phone"/></th>
            <th><spring:message code="userList.form.delete"/></th>
        </tr>

        <c:forEach var="user"  items="${users}" >
            <tr>
                <td>
                        ${user.name}
                </td>
                <td>
                        ${user.phone}
                </td>
                <td>
                    <a href="http://localhost:8080/deleteUser/${user.id}"><spring:message code="userList.form.delete"/></a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="http://localhost:8080/"><button id="btCancel"><spring:message code="userList.form.cancel"/></button></a>
</div>

</body>
</html>