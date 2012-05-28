function initialize() {
    if (GBrowserIsCompatible()) {
      var map = new GMap2(document.getElementById("map_canvas"));
	  var geocoder = new GClientGeocoder();
      map.setCenter(new GLatLng(40.45, -98.78), 4);
      map.setUIToDefault();
   
	$.getJSON('/breweries/json', function(data) {
		
		$.each(data, function(idx, val) {
			var address = data[idx].address1
			var name = data[idx].name
			showAddress(address, name);
		  });
	});
	
	function showAddress(address, name) {
	  geocoder.getLatLng(
	    address,
	    function(point) {
	      if (!point) {
	        alert(address + " not found");
	      } else {
	        var marker = new GMarker(point);
	        map.addOverlay(marker);

	        // As this is user-generated content, we display it as
	        // text rather than HTML to reduce XSS vulnerabilities.
	        marker.openInfoWindow(document.createTextNode(name));
	      }
	    }
	  );
	}
	
  }
}