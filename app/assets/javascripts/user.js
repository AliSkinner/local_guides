function renderUser(userId) {

  // reset default profile view

  $("#user-profile-reviews").siblings().hide();
  $("#review-box").hide();
  $("#user-profile-reviews").fadeIn('slow');
  $("#user-profile-places-table").children().empty();
  $("#user-profile-reviews").children().not('h4').remove();
  var sectionHeight = $(window).height() * 0.65;
  $("#user-profile").css("height", sectionHeight);

  // populating profile

  var user = getUser(userId);
  $(".user-profile-name").text(user.name);
  $("#user-profile-city").text(getCity(user.city_id).name);
  $("#user-profile-user-id").text(user.id);
  $("#user-profile-picture").attr("src", user.image.profile.url);
  $("#user-profile-picture").css("max-height", $("#user-profile-picture").parent().parent().height());

  // populating user's review section

  $.each(user.reviews, function(index, review){
    
    var reviewer = getUser(review.reviewer_id);

    $("#user-profile-reviews").append('<div class="review user col-md-10" data-user-id=' + review.reviewer_id + '><img src=' + reviewer.image.profile.url + ' class="review-user-pic col-md-3"><div class="col-md-9"><p>' + review.body + '</p><span class="bold">' + reviewer.name + '</span></div></div>')
  });

  $("#user-profile").removeClass("hidden");
  $('html, body').animate({
    scrollTop: $("#user-profile").offset().top}, 'slow');

  $.each(user.places, function(index, place){
    $("#user-profile-places-table").append('<tr class="place" data-place-id=' + place.id + '><td><img class="place-thumb" src=' + place.image.thumb.url + '></td><td>' + place.title + '</tr>');
  });
  
  $(".user").on('click', function(){
    renderUser($(this).data("user-id"));
  });

};



function showPlaces() {
  $("#user-profile-places").siblings().fadeOut();
  $("#review-box").hide();
  $("#user-profile-places").fadeIn();
};

function showReviews() {
  $("#user-profile-reviews").siblings().fadeOut();
  $("#user-profile-reviews").fadeIn();
  $("#review-box").slideDown('slow');
};

function showChat() {
  $("#user-profile-chat").siblings().fadeOut();
  $("#review-box").hide();
  $("#user-profile-chat").fadeIn();
};

function getCity(cityId) {
  var city
  $.ajax({
    url: "/cities/" + cityId,
    type: "GET",
    dataType: "json",
    async:false
  }).done(function(response){
    city = response;
  })
  return city;
}



