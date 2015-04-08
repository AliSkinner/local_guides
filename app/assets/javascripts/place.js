function renderPlace(placeId) {

  $.ajax({
    url: "/places/" + placeId,
    type: 'GET',
    dataType: 'json',
  }).done(function(place){
    console.log(place)

    $("#place-profile-title").text(place.title);
    $("#place-profile-description").text(place.description);
    $("#place-profile-poster").text(getUser(place.user_id).name);
    $("#place-profile-map").attr("data-lat", place.lat);
    $("#place-profile-map").attr("data-lng", place.lng);
    $("#place-profile-picture").attr("src", place.image.main.url);
    $("#place-profile").removeClass("hidden");

    $.each(place.comments, function(index, comment){
      
      var user = getUser(comment.user_id);

      $("#place-profile-comments").append('<div class="comment col-md-10"><img src=' + user.image.thumb.url + ' class="comment-user-pic col-md-4"><div class="col-md-8"><p>' + comment.body + '</p><span>' + user.name + '</span></div></div>')

    })


    $('html, body').animate({
      scrollTop: $("#place-profile").offset().top},
      'slow');
  });

};

function getUser(id) {
  var user;
  $.ajax({
    url: "/users/" + id,
    type: 'GET',
    dataType: 'json',
    async: false
  }).done(function(response){
    user = response;
  })
  return user;
}

console.log(getUser(6).name)




// <div id="place-profile-details" class="col-md-4">
//   <h3 id="place-profile-title"></h3>
//   <p id="place-profile-description"></p>
//   <img src="https://s3-eu-west-1.amazonaws.com/local-guides/uploads/other/map.svg" id="place-profile-map">
// </div>

// <div id="place-profile-picture" class="col-md-4">
//   <img src="" alt="" id="place-profile-picture">
// </div>