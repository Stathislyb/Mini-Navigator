var original_loc=0;


$(document).ready( function() {

	for(i=1;i<37;i++){
		if(i<10){
			var spans_html=$('<span class="point" id="p_0'+i+'" onClick="navigate('+i+')"></span>');
		}else{
			var spans_html=$('<span class="point" id="p_'+i+'" onClick="navigate('+i+')"></span>');
		}
		$('#nav_background').append(spans_html);
	}

});

function navigate(point) {

	if(original_loc==0){
		for(i=1;i<37;i++){
			if(i<10){
				$("#p_0"+i).css("background-image", "url(images/point_g.png)");  
			}else{
				$("#p_"+i).css("background-image", "url(images/point_g.png)");   
			}
		}
		original_loc = point;
		if(original_loc<10){
			$("#p_0"+original_loc).css("background-image", "url(images/point_b.png)"); 
		}else{
			$("#p_"+original_loc).css("background-image", "url(images/point_b.png)");  
		}
	}else{
		if(point<10){
			$("#p_0"+point).css("background-image", "url(images/point_b.png)"); 
		}else{
			$("#p_"+point).css("background-image", "url(images/point_b.png)");  
		}
		
		$("#buffering").html('Please Wait ....');
		$.ajax({
			type: "GET",
			url: "functions.php",
			data: "destination=" + point + "&original_loc=" + original_loc,
			dataType: "html",
			success: function(html){   			
				if(html==-1){
					$("#buffering").html('A path is not availible in this map <br/>between those intersections.');
				}else{
					for (var i = 0, len = html.length; i < len; i=i+2) {
					  $("#p_"+html[i]+html[i+1]).css("background-image", "url(images/point_r.png)");
					}
					$("#buffering").html('Path Found.');
				}
			}
		}); 
		
		original_loc=0;
	}

}
