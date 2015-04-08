// $(document).ready(function(){

//   var hideAll = function(){ 
//     $("#city-view").hide();
//     $("#city-users").hide();
//     $("#user-profile").hide();
//     $("#place-profile").hide();

//   };
//   hideAll();

//   var places;
//   var placesRequest = $.ajax({
//     url: "/places",
//     type: "GET",
//     dataType: "JSON"
//   });

//   placesRequest.done(function(data) {
//     places = data;
//   });
//   // debugger


//   // gets all of clicked-city's info

//   $(".city-click").on('click', function() {
//     hideAll();
//     console.log(this)
//     $.ajax({
//       type: 'GET',
//       url: '/cities/' + $(this).data('city-id')
//     }).done(function(response) {
//       console.log(response);

//       // clicked-city's users

//       var cityUsers =[];
//       $.map(response.users, function(user, index){
//         cityUsers.push(user)
//         return cityUsers;
//       })
//       console.log(cityUsers);

//       // clicked-city's places

//       var cityPlaces = [];
//       $.map(response.users, function(user, index){
//         $.map(user.places, function(place, index){
//         cityPlaces.push(place)
//         })
//         return cityPlaces;
//       })
//       console.log(cityPlaces)

//       // clear any content in city-view fields and hide if visible

//       $("#city-users").hide('slow')
//       $(".city-view-title").text("") 

//       // replace with new content and reveal

//       $(".city-view-title").append(response.name)
//       $("#city-view").fadeIn('slow')
     
//       // on click, empty hidden table, repopulate it with new info, then fade in

//       $("#city-users-reveal").on('click', function(){

//         $("#city-users").slideToggle("slow"); 
//         $("#city-users").html('<tr><td>Name</td><td>Number of Posts</td><td>Reviews</td><td>Interests</td></tr>')
        
//         $.map(cityUsers, function(user, index){

//           $("#city-users").append('<tr class="city-user" data-user-id=' + user.id + '><td>' + user.name + '</td><td>' + user.places.length + '</td><td>' + user.reviews.length + '</td><td>' + "my interest" + '</td></tr>');
//         })
      

//         // on click of city-user table row, clear profile contents and fade in

//         $(".city-user").on('click', function(){
//           console.log('click')
//           var profileUser = _.where(cityUsers, {id: $(this).data('user-id')})[0];
//           $("#profile-pic").empty();
//           $("#profile-details").empty();
//           $("#user-places-table").html('<thead><th>Places I Posted</th><th>Comments</th><th>Likes</th><thead>');
//           $("#profile-pic").append('<img src="' + profileUser.image.profile.url + '">');
//           $("#profile-details").append('<h1>' + profileUser.name + '</h1></h4>' + response.name + '</h4>');

//           // fill user-place table and make content links

//           $.each(profileUser.places, function(index, place){
//             $("#user-places-table").append('<tr id="user-place" data-place-id=' + place.id + '><td>' + place.title + '</tr></td>')
//           });

//           $("#user-profile").fadeIn('slow');

//           $("#user-place").on('click', function(){
//             var place = _.where(places, {id: $(this).data('place-id')})[0];
//               // var placeId = $("#infowindow-image").data("place-id");
//             console.log(place)
//             $('#place-profile-title').text("");
//             $('#place-profile-image').attr(('src'), (""));
//             $('#place-profile-description').text("");
//             $('#place-id').text("");
//             $('#place-id').text(place.id);
//             $('#place-profile-title').append(place.title);
//             $('#place-profile-image').attr(('src'), (place.image.main.url));
//             $('#place-profile-description').append(place.description);
//             // debugger
//             var user = _.where(cityUsers, {id: place.user_id})[0];
//             console.log(user)
//             $('#place-profile-user').append(user.name);

//             $("#place-profile").fadeToggle('slow');
            
//           })
//         });
//       });

      
//       $("#city-places-reveal").on('click', function(){
//         $("#city-places").html("");
      
//         $.each(cityPlaces, function(index, place) {

//         var description = place.description.substring(0,25) + "..."
//         $("#city-places").append('<tr class="city-place" data-place-id=' + place.id + '><td><img src=' + place.image.thumb.url + '></td><td>' + place.title + '</td><td>' + description + '</td></tr>');
//         });

//         $("#city-places").slideToggle('slow');

//         $(".city-place").on('click', function(){

//           var place = _.where(places, {id: $(this).data('place-id')})[0];
//             // var placeId = $("#infowindow-image").data("place-id");
//           console.log(place)
//           $('#place-profile-title').text("");
//           $('#place-profile-image').attr(('src'), (""));
//           $('#place-profile-description').text("");
//           $('#place-id').text("");
//           $('#place-id').text(place.id);
//           $('#place-profile-title').append(place.title);
//           $('#place-profile-image').attr(('src'), (place.image.main.url));
//           $('#place-profile-description').append(place.description);
//           // debugger
//           var user = _.where(cityUsers, {id: place.user_id})[0];
//           console.log(user)
//           $('#place-profile-user').append(user.name);

//           $("#place-profile").fadeToggle('slow');

//         })

//       });

//     })
//   });
// });







