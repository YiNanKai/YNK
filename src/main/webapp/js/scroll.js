$(function () {

    var page = 0;
    //广告个数
    var i = 3;
    $(".hint a:eq(0)").addClass("hover");
    var now_page = $(".hover").index();
    //console.log("now: " + now_page);
    //循环滚动广告图片
    var timer = setInterval(function autoScroll(){
        //console.log(i);
        //console.log((now_page+1)%(i+1));
        $(".hint a").eq((now_page+1)%(i+1)).triggerHandler("mouseenter");

    }, 4000);


    $(".hint a").hover(function () {
        //clearInterval(timer);

        var $pageToGo = $(this).index();
        //console.log("page: " + page);
        //console.log("index: " + $pageToGo);

        var $parent = $(this).parents("div.scrollImg");
        var $v_show = $parent.find("div.img_list");
        var $v_content = $parent.find("div.imgContainer");

        //内容显示区
        var v_width = $parent.width();
        //console.log(v_width)
        //var len = $v_show.find("li").length;


        if (!$v_content.is(":animated")) {
            $(".hint a").removeClass("hover");
            $(this).addClass("hover");
            if ($pageToGo > page) {

                $v_content.animate({left: "-=" + v_width*($pageToGo - page)}, 200);
                page = $pageToGo;
                now_page=$pageToGo;
                //$parent.find("a").eq((page)).addClass("hover").siblings().removeClass("hover");

            } else if($pageToGo < page){
                $v_content.animate({left: "+=" + v_width*(page - $pageToGo)}, 200);
                page = $pageToGo;
                now_page=$pageToGo;
                //$parent.find("a").eq((page)).addClass("hover").siblings().removeClass("hover");

            }
        }
    });



})