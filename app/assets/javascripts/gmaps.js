function initialize() {
	var myOptions = {
	      center: new google.maps.LatLng(-34.397, 150.644),
	      zoom: 8,
	      mapTypeId: google.maps.MapTypeId.ROADMAP
	    };
	 var map = new google.maps.Map(document.getElementById("map_canvas"),
	   myOptions);	
	var marker= new google.maps.Marker({
		position: new google.maps.LatLng(9.099761549253056,76.5246167373657),
		title: "Hello Testing",
		clickable: true, 
		map: map
	});
}