function createComment() {

  var comment = $("#new-comment").val();
  var placeId = parseInt($("#place-profile-id").text());
  var userId = parseInt($('#current-user-id').text());


  $.ajax({
    url: "/comments",
    type: "POST",
    dataType: 'json',
    data: { comment : {"body" : comment, "user_id" : userId, "place_id" : placeId }}
  }).done(function(comment){
    console.log(comment);

    $("#new-comment").val("");

    var user = getUser(comment.user_id);

    var commentContent = '<div class="comment user link col-md-10" data-user-id=' + user.id + '><img src=' + user.image.profile.url + ' class="comment-user-pic col-md-4"><div class="col-md-8"><p>' + comment.body + '</p><span class="bold">' + user.name + '</span></div></div>'

    if ($("#place-profile-comments").children().size() > 1){
      $("#place-profile-comments").children().first().after(commentContent);
    } else {
      $("#place-profile-comments").append(commentContent);
    };
  });

};



//      $(".comment:even").css( "background-color", "#bbf" ); 
