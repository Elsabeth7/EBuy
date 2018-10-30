<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>SUCCESS</title>
    <style> <%@include file="/WEB-INF/css/main.css"%></style>

</head>

<body>

<h1>eBuyApp || <a href="http://localhost:8080/productList"><spring:message code="productList.form.products"/></a> || <a href="http://localhost:8080/"><spring:message code="welcome.page"/></a> </h1>

<h2>Product Added Successfully</h2>
<div id="userContent">
    <fieldset>
        <legend>  <spring:message code="productDetails.form.legend"/></legend>
        <form:form>
            <div class="userContent1">
                <spring:message code="productDetails.form.productNumber"/> : ${product.productNumber}<br>
                <spring:message code="productDetails.form.productName"/> : ${product.name}<br>
                <spring:message code="productDetails.form.productPrice"/> : ${product.price}<br>
                <%--Owner Name: ${product.user.name.id}<br>--%>
                <spring:message code="productDetails.form.contactInfo"/> : ${product.price}<br>

<%--
                Contact Info: ${product.phoneNumber}<br>
--%>
            </div>
            <img src="./resource/images/${product.imagePath}" height = 200 width = 150/>
        </form:form>
        <a href="http://localhost:8080/"><button id="btCancel"> <spring:message code="productDetails.form.button"/></button></a>



    </fieldset>
</div>
<footer> &copy; EH Tech Talent </footer>
</body>
</html>