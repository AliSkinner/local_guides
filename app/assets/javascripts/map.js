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

  // $(document).ready(function(){
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
      markers.push({title: place.title, latitude: place.lat, longitude: place.lng, user_id: place.user_id, thumbImage: place.image.thumb.url, mainImage: place.image.main.url, description: place.description, id: place.id })
    });

    $.each(markers, function(index, marker) {
      var myLatLng = new google.maps.LatLng(marker.latitude, marker.longitude);
      bounds.extend(myLatLng);

        // assigning info to the marker

      var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: marker.title,
        address: marker.address,
        thumbImage: marker.thumbImage,
        mainImage: marker.mainImage,
        description: marker.description,
        id: marker.id
      });

      var infoWindowContent = '<div id="info-window-content"><img src=' + 
                                marker.thumbImage + 
                                ' id="infowindow-image" data-place-id=' + 
                                marker.id +
                                 '><h5>' +
                                 marker.title + 
                                  '</h5><p>' + 
                                  marker.description + 
                                  '</p></div>';

      var infowindow = new google.maps.InfoWindow({
        content: infoWindowContent,
        maxWidth: 200
      });


      google.maps.event.addListener(marker, 'click', function() {
        // console.log(marker.address)
        infowindow.open(map, marker);
        $("#infowindow-image").on('click', function(){
          var placeId = $("#infowindow-image").data("place-id");
          // var profilePlace = marker
          console.log(marker)
          $('#place-profile-title').text("");
          $('#place-profile-image').attr(('src'), (""));
          $('#place-profile-description').text("");
          $('#place-id').text("");
          $('#place-id').text(marker.id);
          $('#place-profile-title').append(marker.title);
          $('#place-profile-image').attr(('src'), (marker.mainImage));
          $('#place-profile-description').append(marker.description);

          $("#place-profile").fadeToggle('slow');
        });

        google.maps.event.addListener(map, 'click', function(){
          infowindow.close()
        });
      });
    });

    map.fitBounds(bounds);
    
    })
    // }); // end of ajax

    var revealPlaceForm = document.getElementById('reveal-place-form');

    google.maps.event.addDomListener(revealPlaceForm, 'click', function(e) {

      console.log(map.getCenter().lat());

      var newMarker = new google.maps.Marker({
        position: new google.maps.LatLng(map.getCenter().lat(),map.getCenter().lng()),
        map: map,
        title: 'newLocation',
        draggable: true
      });
      google.maps.event.addListener(newMarker, 'dragend', function (event) {
        document.getElementById("new-lat").value = this.getPosition().lat();
        document.getElementById("new-long").value = this.getPosition().lng();
      });
    });

    function setMap(lat, lng, place) {
      map.setCenter(new google.maps.LatLng(lat,lng));
      if (place = "place") {
        map.setZoom(17);
      } else {
        map.setZoom(10);
      }
      $('html, body').animate({
        scrollTop: $("#main-map-view").offset().top},
        'slow');
    };
    
    $("#city-profile-map").on('click', function(){
      var lat = $(this).data("lat");
      var lng = $(this).data("lng");
      setMap(lat, lng)
    })

    $("#place-profile-map").on('click', function(){
      var lat = $(this).data("lat");
      var lng = $(this).data("lng");
      setMap(lat, lng, "place")
    })
}

google.maps.event.addDomListener(window, 'load', initialize);
