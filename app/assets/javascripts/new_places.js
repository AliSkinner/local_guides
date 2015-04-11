$(document).ready(function(){
  

  $("#reveal-place-form").on('click', function(){
    $("#new-form").slideToggle('slow', function(){
    });
  });
 
  
  $("#submit-place-form").on('click', function(){

        // var marker = new google.maps.Marker({
        //   position: new google.maps.LatLng($("#new-lat").val(),$("#new-long").val()),
        //   map: map,
        //   title: 'newLocation'
        // });

    if ($("#new-title").val().length > 0 && $("#new-lat").val().length > 0 && $("#new-long").val().length > 0){
      var createPlace = $.ajax({
        url: "/places",
        type: "POST",
        dataType: "JSON",
        data: { place : {"title" : $("#new-title").val(), "image" : $("#new-image").val(), "description" : $("#new-description").val(), "lat" : $("#new-lat").val(), "lng": $("#new-long").val(), "user_id" : parseInt($("#user-id").text())}}
      }).done(function(response){
        console.log(response)
       
       $("#current-user-places-table").append('<tr><td>' + response.title + '</td><td>' + response.city + '</td></tr>')


        $("#new-form").slideToggle('slow', function(){
          $("#new-place").text("create new place");
          $("#new-title").val("");
          $("#new-lat").val("");
          $("#new-long").val("");
        });
      })
    }
    else {
          $("#new-form").prepend("<p>Make sure fields are valid</p>")
    }
    createPlace.fail(function(){
      alert("It looks like you're trying to create a place that's more than 50 miles away from your home town. How about trying something a little more local?")
    });
  })
})











