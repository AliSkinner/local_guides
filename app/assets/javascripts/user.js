function renderUser(userId) {

  var user = getUser(userId);
  console.log(user);
  var sectionHeight = $(window).height() * 0.75;
  $("#user-profile").css("max-height", sectionHeight);
  $("#user-profile-name").text(user.name);
  $("#user-profile-city").text(getCity(user.city_id).name);
  $("#user-profile-picture").attr("src", user.image.profile.url);
  $.each(user.reviews, function(index, review){
    $("#user-profile-reviews").append('<div class="review user col-md-10" data-user-id=' + review.reviewer_id + '><img src=' + user.image.profile.url + ' class="review-user-pic col-md-4"><div class="col-md-8"><p>' + review.body + '</p><span>' + user.name + '</span></div></div>')
  });


  $("#user-profile").removeClass("hidden");
  $('html, body').animate({
    scrollTop: $("#user-profile").offset().top}, 'slow');
  

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



