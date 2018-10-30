<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <style> <%@include file="/WEB-INF/css/main.css"%></style>
</head>
<body>
<h1>eBuyApp || <a href="http://localhost:8080/"><spring:message code="welcome.page"/></a></h1>



<a href="?language=en" >English</a>|<a href="?language=fr" >Fran&ccedil;ais</a>

<div id="listProduct">
    <table>
        <tr>
            <th><spring:message code="productList.form.productNumber"/></th>
            <th><spring:message code="productList.form.name"/></th>
            <th><spring:message code="productList.form.description"/></th>
            <th><spring:message code="productList.form.price"/></th>
            <th>Contact </th>
            <th><spring:message code="productList.form.image"/></th>
            <th><spring:message code="productList.form.edit"/></th>
            <th><spring:message code="productList.form.delete"/></th>

        </tr>
        <c:forEach var="product"  items="${products}" >
            <tr>
                <td>
                    ${product.productNumber}
                </td>
                <td>
                    ${product.name}
                </td>
                <td>
                    ${product.description}
                </td>
                <td>
                    ${product.price}
                </td>
                <td>
                        ${product.phoneNumber}
                </td>
                <td>
                    <img src="./resource/images/${product.imagePath}" height = 200 width = 150/>
                </td>
                <td>
                    <a href="http://localhost:8080/updateProduct/${product.id}"><spring:message code="productList.form.edit"/></a>



                        <%--<a href="http://localhost:8080/updateProduct/${updateProduct}"><spring:message code="productList.form.edit"/></a>--%>


                    <%--<form:form modelAttribute="product" action="updateProduct" method="post">--%>
                        <%--<input type="submit" value="Edit">--%>
                    <%--</form:form>--%>

                </td>
                <td>
                    <a href="http://localhost:8080/deleteProduct/${product.id}"><spring:message code="productList.form.delete"/></a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>








