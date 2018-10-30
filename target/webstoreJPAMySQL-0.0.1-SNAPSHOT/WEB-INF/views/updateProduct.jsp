<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <style> <%@include file="/WEB-INF/css/main.css"%></style>

</head>

<body>
<h1>eBuyApp</h1>
<div id="productContent">

    <fieldset>
        <legend> Add New Product</legend>

        <form:form modelAttribute="product" action="/updateProduct/${product.id}" method="post" enctype="multipart/form-data">

           <%-- <input path="product.id" value="${product.id}" type="hidden"/>--%>
            <div>
                <label for="productNumber" class="labelProduct">Product Number</label>
                <form:input path="productNumber" id="productNumber"/>
                <form:errors path="productNumber" cssStyle="color: red;"/>
            </div>

            <div>
                <label for="name" class="labelProduct">Product Name </label>
                <form:input path="name" id="name"/>
                <form:errors path="name" cssStyle="color: red;"/>
            </div>

            <div>
                <label for="description" class="labelProduct">description</label>
                <form:input path="description" id="description"/>
                <form:errors path="description" cssStyle="color: red;"/>
            </div>


            <div>
                <label for="price" class="labelProduct">Item Price</label>
                <form:input path="price" id="name"/>
                <form:errors path="price" cssStyle="color: red;"/>
            </div>
            <div>
                <label for="user.id" class="labelProduct">Owner Name</label>
                <form:select path="user.id" id="user" >
                    <form:option value="0" label="--Select user"/>
                    <form:options items="${users}" itemLabel="name" itemValue="id"></form:options>
                </form:select>
                <form:errors path="user.id" cssStyle="color: red;"/>
            </div>
            <div>
                <label for="phoneNumber" class="labelProduct">Contact Info</label>
                <form:input path="phoneNumber" id="phoneNumber"/>
                <form:errors path="phoneNumber" cssStyle="color: red;"/>
            </div>
            <div>
                <label for="image" class="labelProduct">Image</label>
                <form:input path="image" id="name" type="file"/>
                <form:errors path="image" cssStyle="color: red;"/>
            </div>

            <div class="bt">
                <input type="submit" id="addProduct" value="Update"/>
            </div>
        </form:form>
        <div id="productBt">
            <a href="http://localhost:8080/"><button id="btCancel">Cancel</button></a>
        </div></fieldset>
</div>
<footer> &copy; EH Tech Talent </footer>


</body>
</html>