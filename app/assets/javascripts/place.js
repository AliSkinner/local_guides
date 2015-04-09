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
    $("#place-profile-id").val(place.id);
    $("#place-profile-picture").attr("src", place.image.main.url);
    $("#place-profile").css("height", ($(window).height() / 0.75));

    $("#place-profile").removeClass("hidden");

    $.each(place.comments, function(index, comment){
      
      var user = getUser(comment.user_id);

      $("#place-profile-comments").append('<div class="comment col-md-10"><img src=' + user.image.profile.url + ' class="comment-user-pic col-md-4"><div class="col-md-8"><p>' + comment.body + '</p><span>' + user.name + '</span></div></div>')

    })

    $('html, body').animate({ scrollTop: $("#place-profile").offset().top }, 'slow');

  });

  $("#create-new-comment").on('click', function(){
    createComment()
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


