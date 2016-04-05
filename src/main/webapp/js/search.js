$(function(){
	var url = window.location.href;
	console.log(window.location.href);
	console.log(url.indexOf('search='));
	var a = url.split('search=');
	console.log(a[1]);
	//$(".contentContainer").html(data);
	//console.log('serach: ' + data);
//	function stringToDate(str){
//		var arr = str.split(" ");
//		console.log(arr);
//		//var res = Array(arr[5],arr
//		
//	}
	function strToDate(str){
		var arr = str.split(" ");
		console.log(arr);
		switch(arr[1]){
			case 'Jan':
				arr[1] = '1';
				break;
			case 'Feb':
				arr[1] = '2';
				break;
			case 'Mar':
				arr[1] = '3';
				break;
			case 'Apr':
				arr[1] = '4';
				break;
			case 'May':
				arr[1] = '5';
				break;
			case 'June':
				arr[1] = '6';
				break;
			case 'July':
				arr[1] = '7';
				break;
			case 'Aug':
				arr[1] = '8';
				break;
			case 'Sept':
				arr[1] = '9';
				break;
			case 'Oct':
				arr[1] = '10';
				break;
			case 'Nov':
				arr[1] = '11';
				break;
			case 'Dec':
				arr[1] = '12';
				break;
			default:
				return false;
		}
		var res =arr[5]+'-'+arr[1]+'-'+arr[2];
		return res;
	}
	$.post("showcommoditiesbynamewithlike.htm", {searchData:a[1]}, function(data){

    
        console.log('search data: ' + data);
        data=JSON.parse(data);
        $("#searchResultTotal").text(data.total);
        console.log(data);
        //stringToDate(data.rows[0].commodityPublishDate);
        //console.log(new Date().format(data.rows[0].commodityPublishDate));
        for(var i =0 ; i< data.total; i++){
        	$("#searchResult").append("<li class='list-group-item'>" +
					"<a href='http://127.0.0.1:8080/graduationdesign/commodity/detail.htm?commodityId=" +data.rows[i].commodityId +"' class='picLink'>" +
						"<img class='img-responsice img-thumbnail' src='http://127.0.0.1:8080/graduationdesign/" + data.rows[i].commodityPictureLink + "'>" + 
					"</a>"+
					"<span class='searchName'>"+
						"<a href='http://127.0.0.1:8080/graduationdesign/commodity/detail.htm?commodityId=" + data.rows[i].commodityId +"'>" + data.rows[i].commodityInformatiobn + "</a>"+
					"</span>"+
					"<span class='searchOwner'>"+data.rows[i].userName + "</span>"+
					"<span class='searchPublishDate'>" + strToDate(data.rows[i].commodityPublishDate) + "</span>"+
					"</li>"
        	);
        }
        
    })
})