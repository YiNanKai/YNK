$(function(){
	console.log("loading rank list...");
	$.post("commodity/showcommoditiesbypageview.htm", {}, function(data){
		console.log("php: " + data);
		data=JSON.parse(data);
		console.log(data);
		console.log(data.total);
		//console.log(data.a)
		// <li>
  //                   <span class="rankPos">1</span>
  //                   <img class="img-responsive" src="img/scrollImg/iphone.png">
  //                   <span class="rankInfo">iPhone</span>
  //                   <span class="viewsCount">2134</span>
  //               </li>
		for(var i = 0; i < data.total; i++){
			$(".rank ol").append("<li>" +
				                    "<span class='rankPos'>" + (i+1) + "</span>"+
				                    "<img class='img-responsive' src='" + data.rows[i].commodityPictureLink + "'>"+
									"<span class='rankInfo'>" + data.rows[i].commodityName + "</span>"+
									"<span class='viewsCount'>" + data.rows[i].commoditypageView + "</span>"+
								 "</li>");
		}
		// $(".rankPos").text(data[0].a);
		// $(".rankInfo").text(data[0].b);
		// $(".viewsCount").text(data[2].c);
	})
})