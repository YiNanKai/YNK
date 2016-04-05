$(function(){
	$("#typeNav .hot a").after("<span class='badge badge-hot'>Hot</span>");
	
	var skin_now = $("#skin").attr("href")
    if(skin_now.length > 24){
    	console.log("length > 24");
    	var skin_now = $("#skin").attr("href").substring(22);
        console.log(skin_now);
        skin_now = skin_now.substring(0,skin_now.length-4);
        console.log("skin_now: " + skin_now);
    }else{
    	console.log("length < 24");
    	var skin_now = $("#skin").attr("href").substring(4);
        console.log(skin_now);
        skin_now = skin_now.substring(0,skin_now.length-4);
        console.log("skin_now: " + skin_now);
    }
    

    $("#" + skin_now).addClass("selected");
    $(".skinColor").click(function(){
    	console.log("lenght: " + skin_now.length);
        
    	$("#skin").attr("href", "http://127.0.0.1:8080/graduationdesign/css/" + this.id + ".css");
        $("#"+this.id).addClass("selected").siblings().removeClass("selected");
        console.log(this.id);
        
        
    });

    //$("#typeNav .hot a").after("<span class='badge badge-hot'>Hot</span>")
})
