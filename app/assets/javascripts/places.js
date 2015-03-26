function initialize() {
  // defining and initializing map
  var mapOptions = {
    zoom: 1,
    center: new google.maps.LatLng(51.125646, -0.277173),
    streetViewControl: true,
    mapTypeControl: true
  }

  var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

  var bounds = new google.maps.LatLngBounds();

  // calling places out of database 

  $(document).ready(function(){
    $.ajax({
      url: "/places",
      type: "GET",
      dataType: "JSON",
      response: {}
    }).done(function(response) {


      //assigning place details to markers

      var markers = [];
      console.log(response)
      $.each(response, function(index, place) {
        markers.push({title: place.title, latitude: place.lat, longitude: place.lng, user_id: place.user_id })
      });

      $.each(markers, function(index, marker) {
        var myLatLng = new google.maps.LatLng(marker.latitude, marker.longitude);
        bounds.extend(myLatLng);

        // assigning info to the marker

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: marker.address,
          address: marker.address

        });


        var infoWindowContent = '<div id="info-window-content"><h5>' + marker.title + '</h5></div>';

        var infowindow = new google.maps.InfoWindow({
          content: infoWindowContent
        });

        google.maps.event.addListener(marker, 'click', function() {
          // console.log(marker.address)
          infowindow.open(map, marker);
        });

      });

      map.fitBounds(bounds);
      var input = (document.getElementById('pac-input'));
      map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

    })
  }); // end of ajax

var createPlaceButton = document.getElementById('new-place');

google.maps.event.addDomListener(createPlaceButton, 'click', function(e) {

  var newMarker = new google.maps.Marker({
    position: new google.maps.LatLng(0,0.5),
    map: map,
    title: 'newLocation',
    draggable: true
  });
  google.maps.event.addListener(newMarker, 'dragend', function (event) {
    document.getElementById("new-lat").value = this.getPosition().lat();
    document.getElementById("new-long").value = this.getPosition().lng();
  });
});

  // resets bounds at click of button
  var cityBtn = document.getElementsByClassName('city-btn');

  // turn this into a function
  google.maps.event.addDomListener(cityBtn[0], 'click', function(e){
    console.log('bum')
    var southWest = new google.maps.LatLng((51.5051528 + 0.05),(-0.0756639 - 0.05));
    var northEast = new google.maps.LatLng((51.5051528 - 0.05),(-0.0756639 + 0.05));
    var bounds = new google.maps.LatLngBounds(southWest,northEast);
    map.fitBounds(bounds);
  })

  

}

google.maps.event.addDomListener(window, 'load', initialize);
