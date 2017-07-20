var currentWindow;

/**
 *script for the map
 */

function initializeMap() {
	var mapOptions = {
			center : currentPosition,
			zoom : zoom,
			disableDefaultUI : true
	};
	map = new google.maps.Map(document.getElementById("map"), mapOptions);
	map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
	for(var i = 0; i < markers.length; i++){
		addMarker(markers[i].location, markers[i].title);
	}
}

/**
 * Centrer la carte sur une position definie et animer
 */      
function moveMapToLngLatAndAnimate(latitude, longitude,position) {
	if(latitude!=null && latitude!=null) {
		map.setCenter(new google.maps.LatLng(latitude, longitude));
	}
}


/**
 * Ajouter des markers sur la carte
 */      
/*function addMarker(latitude, longitude) {
	var marker = new google.maps.Marker({
		map : map,
		animation : google.maps.Animation.DROP,
		position : new google.maps.LatLng(latitude, longitude),
		icon : 'http://a.deviantart.net/avatars/p/o/pokeklay.gif?1',
		clickable : false
	});
}*/

function addMarker(latLong, title) {
	//alert(title);
	var marker = new google.maps.Marker({
		map : map,
		position : latLong,
		icon : 'res/images/logo.png',
		title: title
	});
	var infoWindow = new google.maps.InfoWindow({
		content: '<div><span class="Day"><br>' + title + '</span></div>'
	});
	marker.addListener('click', function() {
		if(currentWindow != null){
			currentWindow.close();
		}
		if(currentWindow == infoWindow){
			currentWindow = null;
		}else{
			infoWindow.open(map, marker);
			currentWindow = infoWindow;
		}
	});
}