$(document).ready(function(){

  var hideAll = function(){ 
    $("#city-view").hide();
    $("#city-users").hide();
    $("#user-profile").hide();
  };
  hideAll();

  var places;
  var placesRequest = $.ajax({
    url: "/places",
    type: "GET",
    dataType: "JSON"
  });

  placesRequest.done(function(data) {
    places = data;
  });

  // gets all of clicked-city's info

  $(".city-click").on('click', function() {
    hideAll();
    console.log(this)
    $.ajax({
      type: 'GET',
      url: '/cities/' + $(this).data('city-id')
    }).done(function(response) {
      console.log(response);

      // clicked-city's users

      var cityUsers =[];
      $.map(response.users, function(user, index){
        cityUsers.push(user)
        return cityUsers;
      })
      console.log(cityUsers);

      // clicked-city's places

      var cityPlaces = [];
      $.map(response.users, function(user, index){
        $.map(user.places, function(place, index){
        cityPlaces.push(place)
        })
        return cityPlaces;
      })
      console.log(cityPlaces)

      // clear any content in city-view fields and hide if visible

      $("#city-users").hide('slow')
      $("#city-view-title").text("") 
      $("#city-name-users-reveal").text("") 

      // replace with new content and reveal

      $("#city-view-title").text(response.name)     
      $("#city-name-users-reveal").append(response.name)
      $("#city-view").fadeIn('slow')
     
      // on click, empty hidden table, repopulate it with new info, then fade in

      $("#city-users-reveal").on('click', function(){
        $.map(cityUsers, function(user, index){
          $("#city-users").empty();

          $("#city-users").append('<tr><td>Name</td><td>Number of Posts</td><td>Reviews</td><td>Interests</td></tr><tr class="city-user" data-user-id=' + user.id + '><td>' + user.name + '</td><td>' + user.places.length + '</td><td>' + user.reviews.length + '</td><td>' + "my interest" + '</td></tr>');

          $("#city-users").fadeToggle("slow"); 
        });

        // on click of city-user table row, clear profile contents and fade in

        $(".city-user").on('click', function(){
          var profileUser = _.where(cityUsers, {id: $(this).data('user-id')})[0];
          $("#profile-pic").empty();
          $("#profile-details").empty();
          $("#user-places-table").empty();
          $("#profile-pic").append('<img src="' + profileUser.image.profile.url + '">');
          $("#profile-details").append('<h1>' + profileUser.name + '</h1></h4>' + response.name + '</h4>');

          // fill user-place table and make content links

          $.each(profileUser.places, function(index, place){
            $("#user-places-table").append('<tr id="user-place" data-place-id=' + place.id + '><td>' + place.title + '</tr></td>')
          });
          $("#user-profile").fadeIn('slow');
          $("#user-place").on('click', function(){
            var place = _.where(places, {id: $(this).data('place-id')})[0];
              // var placeId = $("#infowindow-image").data("place-id");
             
              $('#place-profile-title').text("");
              $('#place-profile-image').attr(('src'), (""));
              $('#place-profile-description').text("");
              $('#place-id').text("");
              $('#place-id').text(place.id);
              $('#place-profile-title').append(place.title);
              $('#place-profile-image').attr(('src'), (place.image.main.url));
              $('#place-profile-description').append(place.description);

              $("#place-profile").fadeToggle('slow');
            
          })
        });
      });
    })
  });
});







