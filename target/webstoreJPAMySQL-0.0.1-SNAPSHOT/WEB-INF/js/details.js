
var contextRoot = "/" + window.location.pathname.split('/')[1];

$("#searchBox").keyup(function(){
    function doSearch() {
        $.getJSON("looseSearch.do",
            {
                CHARS: $("#searchBox").val(),
                function (data) {

                    $("#results").test(" ");
                    for (var index in data) {
                        $("results").append(data[index].name + "<br>")
                    }

                }
            }
        );
    }
});

function search() {
    alert($('#searchForm'));
    $.ajax({
       url: contextRoot + '/search/' + $('#searchForm'),
        type: "GET",
        contentType: 'application/json',
        sucess : function (products) {
            alert(products);
        },
        error: function (error) {
            alert(error);
        }
    });
}