$(document).ready(function(){

  $("#main-map-view").css("height", $(window).height());

  function getCityNames() {
    $.ajax({
      url: "/cities",
      type: "GET",
      dataType: "json"
    }).done(function(response){
      // console.log(response)
      $.each(response, function(index, city){
        $("#city-select").append('<option value=' + city.id + '>' + city.name + '</option>')
      });
    });
  };

  getCityNames();

  function renderCity(city){

    $.ajax({
      url: "/cities/" + city,
      type: "GET",
      dataType: "json"
    }).done(function(response){
      console.log(response)
      $("#city-profile-users").empty();
      $("#city-profile-places").empty();
      $(".city-profile-name").text(response.name);
      $("#city-profile-map").attr("data-lat", response.latitude);
      $("#city-profile-map").attr("data-lng", response.longitude);
      $("#city-profile-picture").attr('src', response.image.url)

      $.each(response.users, function(index, user){
        $("#city-profile-users").append('<tr class="user" data-user-id=' + user.id + '><td><img class="user-thumb" src=' + user.image.profile.url + '></td><td>' + user.name + '</tr>');

        $.each(user.places, function(index, place){
          console.log(place)
          $("#city-profile-places").append('<tr class="place" data-place-id=' + place.id + '><td><img class="place-thumb" src=' + place.image.thumb.url + '></td><td>' + place.title + '</tr>');
        });

      });

      // var defaultPlace = $("#city-profile-places").children().children().first().data("place-id");
      // renderPlace(defaultPlace);

      $(".place").on('click', function(){
        renderPlace($(this).data("place-id"))
      });

      $(".user").on('click', function(){
        renderUser($(this).data("user-id"));
      });

      var lat = parseFloat($("#city-profile-map").attr("data-lat"));
      var lng = parseFloat($("#city-profile-map").attr("data-lng"));
      getWeather(lat, lng);
    });

    
    
    

    var sectionHeight = $(window).height() * 0.65;
    $("#city-profile").css("height", sectionHeight);
    $("#city-profile").removeClass("hidden");
  };

  var dropDown = $("#city-select");
  dropDown.on('change', function(){
    $("#place-profile").addClass("hidden");

    renderCity($(this).val());
    $('html, body').animate({
      scrollTop: $("#city-profile").offset().top}, 'slow');
    })

  // initializing click promp event listeners

  $(".user").on('click', function(){
    renderUser($(this).data("user-id"));
  });

  $("#create-new-review").on('click', function(){
    createReview();
    console.log('click')
  });

  $("#user-profile-myplaces").on('click', function(){
    showPlaces();
  });

  $("#user-profile-rate").on('click', function(){
    showReviews();
  });

  $("#user-profile-message").on('click', function(){
    showChat();
    console.log('upm-click')
  });

  $("#create-new-comment").on('click', function(){
    if ($("#new-comment").val()) {
      createComment()
    }
  });

})



function getWeather(lat, lng){
  $.ajax({
    url: "http://api.wunderground.com/api/b6f59bc8ca6b470e/conditions/q/" + lat + "," + lng + ".json",
    type: 'GET',
  }).done(function(response){
    console.log(response.current_observation.temp_c, response.current_observation.icon_url);
    var temp = response.current_observation.temp_c;
    var icon = response.current_observation.icon_url;
    $("#weather").empty();
    $("#weather").append('<h5>Weather now: <span id="temp">' + temp + '&degC</span> <img id="weather-icon" src=' + icon + ' alt="weather icon"></h5>');
  });
};








