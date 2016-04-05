$(function(){
    //搜索商品
    $(".searchBtn").click(function(){
    	var serachVal = $(".search").val();
        if(!serachVal.trim()){
            alert("商品名不能为空");
            return false;
        }
        var search_json = JSON.stringify({
            search: serachVal
        });
        console.log("search_json: " + search_json);
        //$.post("search.php", {searchData:search_json}, function(data){
            window.location.href='http://127.0.0.1:8080/graduationdesign/commodity/searchResult.htm?search=' + serachVal.trim();
            // alert(data);
            // alert(window.location.href);
            // $(".contentContainer").html(data);
        //})

    });
    $("input[class='search']").keyup(function(e){
        if(e.which == 13){
            $(".searchBtn").trigger("click");
        }
    });

    //热门商品
    $("#hotGoods a").click(function(){
        alert($(this).text());
    });

    $(".goodsType li").click(function(){
        alert($(this).text());
    });

    $(".goodsType .hot").append("<span></span>");
})