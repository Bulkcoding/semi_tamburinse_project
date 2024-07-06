$(document).ready(function () {
	
	$.ajax({
		url:"",
		type:"GET",
		data:{},
		dataType:"json",
		success:function(json) {
			
		},
		error: function(request, status, error){
         alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
        } 
		
	}); // end of $.ajax({})--------
	
});// end of $(document).ready(function () {})----------