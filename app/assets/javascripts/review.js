function createReview() {

  var review = $("#new-review").val();
  var subjectId = $("#user-profile-user-id").data('user-id');
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

    $("#user-profile-reviews").children().first().next().prepend('<div class="review user col-md-10" data-user-id=' + reviewer.id + '><img src=' + reviewer.image.profile.url + ' class="review-user-pic col-md-4"><div class="col-md-8"><p>' + review.body + '</p><span class="bold">' + reviewer.name + '</span></div></div>');
  });

};



//      $(".comment:even").css( "background-color", "#bbf" ); 
