$(document).ready(function(){

  $("#comment-section").hide()


  $("#view-comments").on("click", function(){
    $("#place-comments").html("")
    $.ajax({
      url: "/comments",
      type: "GET",
      dataType: "JSON"
    }).done(function(response){

      var $filteredComments = []

      $.grep(response, function(k,v){
        if (k.place_id === parseInt($("#place-id").text())){
        $filteredComments.push(k)
        }
      })
      console.log($filteredComments)
      $.each($filteredComments, (function(index, comment){
        console.log(comment.body)
        // $("#place-comments").html("")
        $("#place-comments").append('<table class="comment"><tr><td>' + comment.user_id + '</td><td>' + comment.updated_at + '</td></tr><tr><td>' + comment.body + '</td></tr></table>')
      }))
    })


    $("#comment-section").slideToggle('slow')

  });





  $('#submit-comment').on('click', function(){
    var $comment = $('#new-comment-field').val();
    var $userId = parseInt($('#current-user-id').text());
    var $placeId = parseInt($("#infowindow-image").data("place-id"));

    $.ajax({
      url: "/comments",
      type: "POST",
      dataType: "JSON",
      data: { comment : {"body" : $comment, "user_id" : $userId, "place_id" : $placeId }}
    }).done(function(response){
      $('#new-comment-field').val("")
      console.log(response)
      var $body = response.body;
      var userName = $("#current-user-link").text()

      $("#place-comments").append('<table class="comment"><tr><td>' + response.user_id + '</td><td>' + response.updated_at + '</td></tr><tr><td>' + response.body + '</td></tr></table>');

    })
  });

});