function renderUser(userId) {

  $("#user-profile-reviews").siblings().hide();
  $("#review-box").hide();
  $("#user-profile-reviews").fadeIn('slow');
  $("#user-profile-places-table").children().empty();

  var user = getUser(userId);
  console.log(user);
  $("#user-profile-reviews").children().not('h4').remove();
  var sectionHeight = $(window).height() * 0.65;
  $("#user-profile").css("height", sectionHeight);
  $(".user-profile-name").text(user.name);
  $("#user-profile-city").text(getCity(user.city_id).name);
  $("#user-profile-user-id").attr("data-user-id", user.id);

  $("#user-profile-picture").attr("src", user.image.profile.url);
  $("#user-profile-picture").css("max-height", $("#user-profile-picture").parent().parent().height());
  $.each(user.reviews, function(index, review){
    console.log(review)
    var reviewer = getUser(review.reviewer_id);
    $("#user-profile-reviews").append('<div class="review user col-md-10" data-user-id=' + review.reviewer_id + '><img src=' + reviewer.image.profile.url + ' class="review-user-pic col-md-4"><div class="col-md-8"><p>' + review.body + '</p><span class="bold">' + reviewer.name + '</span></div></div>')
  });

  $("#user-profile").removeClass("hidden");
  $('html, body').animate({
    scrollTop: $("#user-profile").offset().top}, 'slow');

  $.each(user.places, function(index, place){
    $("#user-profile-places-table").append('<tr class="place" data-place-id=' + place.id + '><td><img class="place-thumb" src=' + place.image.thumb.url + '></td><td>' + place.title + '</tr>');
  });
  
  $("#user-profile-myplaces").on('click', function(){
    showPlaces();
  });

  $("#user-profile-rate").on('click', function(){
    showReviews();
  });

  $("#user-profile-message").on('click', function(){
    showChat();
  });

  $("#create-new-review").on('click', function(){
    createReview();
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



