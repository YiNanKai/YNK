$(function(){
	console.log("loading news...");
	$.post("news/shownewss.htm", {}, function(data){
		console.log("php: " + data);
		data=JSON.parse(data);
		console.log(data);
		console.log(data.total);
//		<li>杀
//        <b>[活动]</b>
//        <a href="#">动态111</a>
//    </li>
		for(var i = 0; i < data.total; i++){
			$(".news ul").append("<li>"+
									"<b>[活动]</b>"+
									"<a href='" + data.rows[i].newsSourceLink + "'>" + data.rows[i].newsTitle + "</a>"+
								 "</li>");
		}
		// $(".rankPos").text(data[0].a);
		// $(".rankInfo").text(data[0].b);
		// $(".viewsCount").text(data[2].c);
	})
})