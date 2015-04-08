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

      $("#city-profile-users").empty();
      $("#city-profile-places").empty();
      $("#city-profile-name").text(response.name);
      $("#city-profile-map").attr("data-lat", response.latitude);
      $("#city-profile-map").attr("data-lng", response.longitude);

      $.each(response.users, function(index, user){
        $("#city-profile-users").append('<tr class="user" data-user-id=' + user.id + '><td><img class="user-thumb" src=' + user.image.thumb.url + '></td><td>' + user.name + '</tr>');

        $.each(user.places, function(index, place){
          console.log(place)
          $("#city-profile-places").append('<tr class="place" data-place-id=' + place.id + '><td><img class="place-thumb" src=' + place.image.thumb.url + '></td><td>' + place.title + '</tr>');
        });

      });

      $(".place").on('click', function(){
        renderPlace($(this).data("place-id"))
      });
      
    });

    $("#city-profile").removeClass("hidden");
  };

  var dropDown = $("#city-select");
  dropDown.on('change', function(){
    renderCity($(this).val());
    $('html, body').animate({
      scrollTop: $("#city-profile").offset().top},
      'slow');
  })

  // function doIt() {
  //   console.log("blah")
  // }

})