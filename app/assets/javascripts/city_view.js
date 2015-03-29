$(document).ready(function(){
  $("#city-view").hide();
  $("#city-users").hide();
  $("#user-profile").hide();

  var $allCities = [];

  $.ajax({
    url: "/cities",
    type: "GET",
    dataType: "JSON"
  }).done(function(allCities){
    $allCities.push(allCities);

    var $allPlaces = [];

    $.ajax({
      url: "/places",
      type: "GET",
      dataType: "JSON"
    }).done(function(allPlaces){
      $allPlaces.push(allPlaces);

      $.ajax({
        url: "/users",
        type: "GET",
        dataType: "JSON"
      }).done(function(allUsers){
        console.log(allUsers)
        console.log(allCities)

        $(".city-click").on('click', function(){

          $("#city-view-title").text( $(this).data('city-name'));
          $("#city-users-reveal").append($(this).data('city-name'))

          var cityId = $(this).data('city-id')
          var $cityUsers = []

          $.grep(allUsers, function(user, index){

            if (user.city_id === cityId){
              $cityUsers.push(user)
            }
          })

          console.log($cityUsers)

          $.each($cityUsers, (function(index, user){
            $("#city-users").append('<tr class="city-user" data-user-id=' + user.id + '><td>' + user.name + '</td></tr>')

          }));

          $("#city-view").fadeToggle('slow')
          $("#city-users-reveal").on('click', function(){
            $("#city-users").slideToggle('slow')
          });

          $(".city-user").on('click', function(){

            var userId = $(this).data('user-id')
        // console.log(userId)

        var profileUser = [];
        $.grep($cityUsers, function(user, index){
            // console.log(user)
            if (user.id === userId){
              profileUser.push(user);
            }
          })
        profileUser = profileUser[0]
        console.log(profileUser)
        console.log($allCities)

        var profileUserCity = [];
        $.grep($allCities[0], function(city, index){
          if (city.id === profileUser.city_id){
            profileUserCity.push(city);
          }
        })
        console.log(profileUserCity)
        profileUserCity = profileUserCity[0];
        console.log(profileUserCity)

        var $profileUserPlaces = [];
        $.grep($allPlaces[0], function(place, index){
          if (place.id === profileUser.id){
            $profileUserPlaces.push(place);
          }
        })
        console.log($profileUserPlaces)
        // $profileUserPlaces = $profileUserPlaces[0]

        $("#profile-pic").append('<img src="' + profileUser.image.profile.url + '">');
        $("#profile-details").append('<h1>' + profileUser.name + '</h1></h4>' + profileUserCity.name + '</h4>')
        
        $.each($profileUserPlaces, function(index, place){
          console.log(place.title)
          $("#user-places-table").append('<tr><td>' + place.title + '</tr></td>')
        });


        $("#user-profile").show('slow')
      });
})
});
});
});
});











