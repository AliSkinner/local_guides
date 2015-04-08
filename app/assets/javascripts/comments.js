// $(document).ready(function(){

//   // hide comments on load

//   $("#comment-section").hide()

//   // get the info for this place

//   $("#view-comments").on("click", function(){
//     $("#place-comments").html("")
//     $.ajax({
//       url: "/places/" + parseInt($('#place-id').text()),
//       type: "GET",
//       dataType: "JSON"
//     }).done(function(response){
//       var comments = response.comments;
//       // debugger
//       // append to comment section before slide-down
//       $("#place-comments").html("")
//       $.each(comments, (function(index, comment){
//         console.log(comment.body)
//         // $("#place-comments").html("")
//         $("#place-comments").append('<table class="comment"><tr><td>' + comment.user.name + '</td><td>' + comment.updated_at + '</td></tr><tr><td>' + comment.body + '</td></tr></table>')
//       }))
//      $(".comment:even").css( "background-color", "#bbf" ); 
//     })
//     $("#comment-section").slideToggle('slow')
//   });

//   // create comment

//   $('#submit-comment').on('click', function(){
//     var $comment = $('#new-comment-field').val();
//     var $userId = parseInt($('#current-user-id').text());
//     var $placeId = parseInt($("#infowindow-image").data("place-id"));

//     $.ajax({
//       url: "/comments",
//       type: "POST",
//       dataType: "JSON",
//       data: { comment : {"body" : $comment, "user_id" : $userId, "place_id" : $placeId }}
//     }).done(function(response){

//       // clear field

//       $('#new-comment-field').val("")
//       console.log(response)
//       var $body = response.body;
//       var userName = $("#current-user-link").text()

//       // append to commentst list

//       $("#place-comments").append('<table class="comment"><tr><td>' + response.user.name + '</td><td>' + response.updated_at + '</td></tr><tr><td><img src=' + response.user.image.thumb.url + '></td><td>' + response.body + '</td></tr></table>');
//     })

//      $(".comment:even").css( "background-color", "#bbf" ); 

//   });

// });