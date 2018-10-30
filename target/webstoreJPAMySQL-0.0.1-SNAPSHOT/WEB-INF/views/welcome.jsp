<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>

    <style> <%@include file="/WEB-INF/css/main.css"%></style>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</head>
<body>
<h1>eBuyApp || <a href="http://localhost:8080/productList"><spring:message code="productList.form.products"/></a> </h1>

        <input type="text" name="searchKey" id="searchKey">
        <button type="button" onclick="search()">search</button>

        <div id="searchResult" style="border: 1px solid blue;">
            <%--<ul id="searchResultList">--%>

            <%--</ul>--%>
        </div>


<script>

    // var contextRoot = "/" + window.location.pathname.split('/')[1];
    var baseUrl = "http://localhost:8080";
    // alert(contextRoot);
    function search() {
        $.ajax({
            url: baseUrl + '/search?searchKey=' + document.getElementById('searchKey').value,
            type: "GET",
            contentType: 'application/json',
            success : function (products) {
                $.each(products, function(i, product) {
                    var url = "http://localhost:8080/productInfo/" + product.id;
                    $('#searchResult').append($('<a></a>').attr("href",url).append('<label>' + product.name + '</label>'));
                });
            },
            error: function (error) {
                alert("error" + error.message);
            }
        });
    }

</script>

<a href="?language=en" >English</a>|<a href="?language=fr" >Fran&ccedil;ais</a>

<div id="content">
<div id="idRigth">
    <form:form modelAttribute="user" action="addUserForm" method="get" cssClass="fWelcome">
<%--
        <input type="submit" id="addUser" value="Add User"/>

--%>

        <button type="submit" id="addUser"> <spring:message code="welcome.form.adduser.button"/> </button>

<%--
        <a href="http://localhost:8080/"><button id="btCancel1" ><spring:message code="addProduct.form.button"/></button></a>
--%>

    </form:form>
    <form:form modelAttribute="product" action="addProductForm" method="get" cssClass="fWelcome">
        <button type="submit" id="addProduct"> <spring:message code="welcome.form.addProduct.button"/> </button>
    </form:form>

   <%-- <form:form modelAttribute="product" action="productList" method="get" cssClass="fWelcome">
        <input type="submit" id="addProduct" value="List of Products"/>

    </form:form>--%>

    <h2 id="idTitle"> <spring:message code="welcome.idTitle"/></h2>
    <p id="idText"> <spring:message code="welcome.text"/>
    </p>




    
    
</div>

 <div class="smaller"> <img src="./resource/images/EHTech.png" alt="Team Logo" class="smaller"> </div>
</div>
<footer> &copy; EH Tech Talent </footer>

</body>
</html>
