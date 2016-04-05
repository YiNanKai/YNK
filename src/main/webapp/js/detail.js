$(function(){
	$(".jqzoom").jqzoom({
		zoomType:'standard',
		lens:true,
		preloadImages:false,
		alwaysOn:false,
		zoomWidth:340,
		zoomHeight:340,
		xOffset:10,
		yOffset:0,
		position:'right'
	});
	function dateFormat(date){
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var date = date.getDate();
		var res = year + "-" + month + "-" + date;
		return res;
	}
	var url = window.location.href;
	console.log(window.location.href);
	console.log(url.indexOf('commodityId='));
	var a = url.split('commodityId=');
	console.log("commodityId: "+ a[1]);
	
	$.post("showcommoditydetail.htm", {commodityId:a[1]}, function(data){
		console.log(data);
		var detailData = JSON.parse(data);
		console.log(detailData);
		console.log(detailData.commodityPublishDate);
		var date = new Date(detailData.commodityPublishDate);
		console.log(date);
		var dateToShow = dateFormat(date);
		console.log(dateToShow);
		
		$("#detailCommodityName").text(detailData.commodityName);
		$("#detailIntro").text(detailData.commodityInformation);
		$("#detailOwner").text(detailData.userId);
		$("#detailWanted").text(detailData.commodityWantChangeCategory);
		$("#detailPrice").text(detailData.commodityPrice);
		$("#detailPublishDate").text(dateToShow);
	})
})