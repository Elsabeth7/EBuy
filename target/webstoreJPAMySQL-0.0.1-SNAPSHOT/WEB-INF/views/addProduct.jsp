<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <style> <%@include file="/WEB-INF/css/main.css"%></style>

</head>

<body>
<h1>eBuyApp  || <a href="http://localhost:8080/productList"><spring:message code="productList.form.products"/></a>  || <a href="http://localhost:8080/"><spring:message code="welcome.page"/></a></h1>
<a href="?language=en" >English</a>|<a href="?language=fr" >Fran&ccedil;ais</a>

<div id="productContent">

    <fieldset>
        <legend> <spring:message code="addProduct.form.legend"/></legend>

        <form:form modelAttribute="product" action="addProduct" method="post" enctype="multipart/form-data">


            <div>
                <label for="productNumber" class="labelProduct"><spring:message code="addProduct.form.productNumber.label"/></label>
                <form:input path="productNumber" id="productNumber"/>
                <form:errors path="productNumber" cssStyle="color: red;"/>
            </div>

            <div>
                <label for="name" class="labelProduct"><spring:message code="addProduct.form.name.label"/> </label>
                <form:input path="name" id="name"/>
                <form:errors path="name" cssStyle="color: red;"/>
            </div>

           <%-- <div>
                <label for="user.name" class="labelProduct"><spring:message code="addProduct.form.user.name.label"/></label>
                <form:select path="user.name" id="username" >
                    <form:options items="${user.name}" itemLabel="user.name"></form:options>
                </form:select>
                <form:errors path="image" cssStyle="color: red;"/>
            </div>--%>

            <div>
                <label for="user.id" class="labelProduct"><spring:message code="addProduct.form.user.name.label"/></label>
                <form:select path="user.id" id="user" >
                    <form:option value="0" label="--Select user"/>
                    <form:options items="${users}" itemLabel="name" itemValue="id"></form:options>
                </form:select>
                <form:errors path="user.id" cssStyle="color: red;"/>
            </div>
            <div>
                <label for="description" class="labelProduct"><spring:message code="addProduct.form.description.label"/></label>
                <form:input path="description" id="description"/>
                <form:errors path="description" cssStyle="color: red;"/>
            </div>


            <div>
                <label for="price" class="labelProduct"><spring:message code="addProduct.form.price.label"/></label>
                <form:input path="price" id="name"/>
                <form:errors path="price" cssStyle="color: red;"/>
            </div>


            <div>
                <label for="phoneNumber" class="labelProduct"><spring:message code="addProduct.form.phoneNumber.label"/></label>
                <form:input path="phoneNumber" id="phoneNumber"/>
                <form:errors path="phoneNumber" cssStyle="color: red;"/>
            </div>

            <div>
                <label for="image" class="labelProduct"><spring:message code="addProduct.form.image.label"/></label>
                <form:input path="image" id="name" type="file"/>
                <form:errors path="image" cssStyle="color: red;"/>
            </div>

            <div id="bt2">

                <button type="submit" id="addProduct"> <spring:message code="addProduct.form.addProduct.button"/> </button>
                <button type="reset" id="productReset"> <spring:message code="addProduct.form.reset.button"/> </button>


                <%--<input type="submit" id="addProduct" value="Add Product"/>

                <input type="reset" id="productReset" value="Reset"/>--%>
            </div>

        </form:form>

        <a href="http://localhost:8080/"><button id="btCancel1" ><spring:message code="addProduct.form.button"/></button></a>


    </fieldset>

</div>
<footer> &copy; EH Tech Talent </footer>


</body>
</html>