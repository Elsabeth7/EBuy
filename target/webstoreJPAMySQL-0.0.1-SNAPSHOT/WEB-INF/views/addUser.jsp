<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <style> <%@include file="/WEB-INF/css/main.css"%></style>

</head>

<%--<body>

<h1>eBuyApp</h1>


<div id="userContent">
    <fieldset>
        <legend> Add New User</legend>
        <form:form modelAttribute="user" action="addUser" method="Post">
            <div class="userContent1">
                <label for="name">User Name</label>
                <form:input path="name" id="name"/>
                <form:errors path="name" cssStyle="color: red;"/>
            </div>
            <div class="userContent1">
                <label for="phone">Phone Number</label>
                <form:input path="phone" id="phone"/>
                <form:errors path="phone" cssStyle="color: red;"/>
            </div>

            <div class="bt">
                <input type="submit" id="addUser" value="Add User"/>
            </div>
        </form:form>

        <a href="http://localhost:8080/"><button id="btCancel">Cancel</button></a>

    </fieldset>
</div>
<footer> &copy; EH Tech Talent </footer>

</body>--%>

<body>

<h1>eBuyApp || <a href="http://localhost:8080/productList"><spring:message code="productList.form.products"/></a> || <a href="http://localhost:8080/"><spring:message code="welcome.page"/></a></h1>
<a href="?language=en" >English</a>|<a href="?language=fr" >Fran&ccedil;ais</a>

<div id="userContent">
    <fieldset>
        <legend> <spring:message code="addUser.form.legend"/></legend>
        <form:form modelAttribute="user" action="addUser" method="Post">
            <div class="userContent1">
                <label for="name"> <spring:message code="addUser.form.name.label"/> </label>
                <form:input path="name" id="name"/>
                <form:errors path="name" cssStyle="color: red;"/>
            </div>
            <div class="userContent1">
                <label for="phone"> <spring:message code="addUser.form.phone.label"/> </label>
                <form:input path="phone" id="phone"/>
                <form:errors path="phone" cssStyle="color: red;"/>
            </div>

            <div class="bt" id="btn">

                <button type="submit" id="addUser"> <spring:message code="addUser.form.addUser.button"/> </button>
                <button type="reset" id="userReset"> <spring:message code="addUser.form.reset.button"/> </button>


            <%--<input type="submit" id="addUser" value="Add User"/>--%>

<%--
                <input type="reset" id="userReset" value="Reset"/>
--%>

            </div>
        </form:form>

        <a href="http://localhost:8080/"><button id="btCancel"><spring:message code="addUser.form.button"/></button></a>

    </fieldset>
</div>
<footer> &copy; EH Tech Talent </footer>

</body>


</html>