<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>SUCCESS</title>
    <style> <%@include file="/WEB-INF/css/main.css"%></style>

</head>

<body>

<h1>eBuyApp || <a href="http://localhost:8080/productList"><spring:message code="productList.form.products"/></a> || <a href="http://localhost:8080/"><spring:message code="welcome.page"/></a> </h1>

<h2>User Added Successfully</h2>
<div id="userContent">
    <fieldset>
        <legend><h4><spring:message code="UserDetails.form.legend"/></h4></legend>
        <form:form action="userList" method="get">
            <div class="userContent1">
                <spring:message code="UserDetails.form.userName"/>   : ${user.name}<br>
                <spring:message code="UserDetails.form.phoneNumber"/> : ${user.phone}<br>
            </div>
           <%-- <div>
                <input type="submit" value="User List">
            </div>--%>
        </form:form>

        <a href="http://localhost:8080/"><button id="btCancel"> <spring:message code="UserDetails.form.button"/></button></a>



    </fieldset>
</div>
<footer> &copy; EH Tech Talent </footer>
</body>
</html>