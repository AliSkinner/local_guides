function renderPlace(placeId) {

  $.ajax({
    url: "/places/" + placeId,
    type: 'GET',
    dataType: 'json',
  }).done(function(place){
    console.log(place)
    $("#place-profile-map").removeAttr("data-lat");
    $("#place-profile-map").removeAttr("data-lng");

    $('#place-profile-comments').children().not('h3').remove();
    $("#place-profile-title").text(place.title);
    $("#place-profile-description").text(place.description);
    $("#place-profile-poster").attr("data-user-id", place.user_id);
    $("#place-profile-poster").text(getUser(place.user_id).name);
    $("#place-profile-map").attr("data-lat", place.lat);
    $("#place-profile-map").attr("data-lng", place.lng);
    $("#place-profile-id").text(place.id);
    $("#place-profile-picture").attr("src", place.image.main.url);
    var sectionHeight = $(window).height() * 0.65;
    $("#place-profile").css("height", sectionHeight );

    $("#place-profile").removeClass("hidden");
  
    commentBoxPlacement();
   

    $.each(place.comments, function(index, comment){

      var user = getUser(comment.user_id);

      $("#place-profile-comments").append('<div class="comment user col-md-10" data-user-id=' + user.id + '><img src=' + user.image.profile.url + ' class="comment-user-pic col-md-4"><div class="col-md-8"><p>' + comment.body + '</p><span class="bold">' + user.name + '</span></div></div>')
    });



    $('html, body').animate({ scrollTop: $("#place-profile").offset().top }, 'slow');

    $(".user").on('click', function(){
      renderUser($(this).data("user-id"));
    });

  
  });

 
};


function commentBoxPlacement() {

  if ($("#comment-box").height() + $("#place-profile-picture").height() > $("#place-middle-box").height()) {
    console.log('removed')
    var a = $("#comment-box").detach();
    $("#place-profile-id").after(a);
  } 
    else if ($("#comment-box").height() + $("#place-profile-picture").height() <= $("#place-middle-box").height() && !$.contains($("#place-middle-box"), $("#comment-box"))) {

    var a = $("#comment-box").detach();
    $("#place-middle-box").append(a);
  }
}




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


