function createReview() {

  var review = $("#new-review").val();
  var subjectId = parseInt($("#user-profile-user-id").text());
  var reviewerId = parseInt($('#current-user-id').text());


  $.ajax({
    url: "/reviews",
    type: "POST",
    dataType: 'json',
    data: { review : {"body" : review, "reviewer_id" : reviewerId, "subject_id" : subjectId }}
  }).done(function(review){
    console.log(review);

    $("#new-review").val("");

    var reviewer = getUser(review.reviewer_id)
    var reviewContent = '<div class="review user col-md-10" data-user-id=' + reviewer.id + '><img src=' + reviewer.image.profile.url + ' class="review-user-pic col-md-3"><div class="col-md-9"><p>' + review.body + '</p><span class="bold">' + reviewer.name + '</span></div></div>'

    if ($("#user-profile-reviews").children().size() > 1){
      $("#user-profile-reviews").children().first().after(reviewContent);
    } else {
      $("#user-profile-reviews").append(reviewContent);
    };
  });

};




//      $(".comment:even").css( "background-color", "#bbf" ); 
