$(document).ready(function(){

  $("#city-view").hide();
  $("#city-users").hide();
  $("#user-profile").hide();

  var places;
  var placesRequest = $.ajax({
    url: "/places",
    type: "GET",
    dataType: "JSON"
  });

  placesRequest.done(function(data) {
    places = data;
  });

  // gets all of clicked-city's places

  $(".city-click").on('click', function() {
    console.log(this)
    // console.log('clicked city: ' + $(this).data('city-name'));
    $.ajax({
      type: 'GET',
      url: '/cities/' + $(this).data('city-id')
    }).done(function(response) {
      console.log(response);
      // debugger

      var cityUsers =[];
      $.map(response.users, function(user, index){
        cityUsers.push(user)
        return cityUsers;
      })
      console.log(cityUsers);

      var cityPlaces = [];
      $.map(response.users, function(user, index){
        $.map(user.places, function(place, index){
        cityPlaces.push(place)
        })
        return cityPlaces;
      })
      console.log(cityPlaces)
      $("#city-view-title").text(response.name)     
      $("#city-users-reveal").append(response.name)

      $("#city-view").fadeToggle('slow')

      $("#city-users-reveal").on('click', function(){
         

        $.map(cityUsers, function(user, index){
          
          $("#city-users").append('<tr class="city-user" data-user-id=' + user.id + '><td>' + user.name + '</td><td>' + user.places.length + '</td><td>' + user.reviews.length + '</td><td>' + "my interest" +'</td></tr>');

          $("#city-users").slideToggle("slow"); 

          });

          $(".city-user").on('click', function(){

            var profileUser = _.where(cityUsers, {id: $(this).data('user-id')})[0];

            $("#profile-pic").append('<img src="' + profileUser.image.profile.url + '">');

            $("#profile-details").append('<h1>' + profileUser.name + '</h1></h4>' + response.name + '</h4>')

            $.each(profileUser.places, function(index, place){
              console.log(place.title)
              $("#user-places-table").append('<tr><td>' + place.title + '</tr></td>')
            });



            $("#user-profile").show('slow')

          });

        });
      })
   });



});







