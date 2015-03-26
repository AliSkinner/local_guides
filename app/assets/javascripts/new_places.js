$(document).ready(function(){


  $("#new-place").on('click', function(){
    $("#new-form").slideToggle('slow', function(){
      $("#new-place").text("hide form");
    });
  })

  
  $("#submit-form").on('click', function(){

        // var marker = new google.maps.Marker({
        //   position: new google.maps.LatLng(0,0.5),
        //   map: map,
        //   title: 'newLocation'
        // });

    if ($("#new-title").val().length > 0 && $("#new-lat").val().length > 0 && $("#new-long").val().length > 0){
      // console.log("bum")
      $.ajax({
        url: "/places",
        type: "POST",
        dataType: "JSON",
        data: { place : {"title" : $("#new-title").val(), "lat" : $("#new-lat").val(), "long": $("#new-long").val(), "user_id" : parseInt($("#user-id").text())}}
      }).done(function(response){
        console.log(response)
        $("#place-list").append("<td>" + response.title + '</td><td>' + response.lat + '</td><td>' + response.long + '</td><td>' + response.user_id + '</td>')

         
         

        $("#new-form").slideToggle('slow', function(){
          $("#new-place").text("create new place");
          $("#new-title").val("");
          $("#new-lat").val("");
          $("#new-long").val("");
        });

      })

    }else{
      $("#new-form").prepend("<p>Make sure fields are valid</p>")
    }
  })

})











