$(document).ready(function(){
  

  $("#reveal-place-form").on('click', function(){
    $("#new-form").slideToggle('slow', function(){
    });
  });


  // $("#new-form").on('submit', 'new_place', function(e){
  //   $(e).preventDefault();
  //   // $form = $(this)
  //   // console.log(this)
  //   $("#new-form").slideToggle('slow', function(){
  //     $("#new-place").text("create new place");
  //     $("#new-title").val("");
  //     $("#new-lat").val("");
  //     $("#new-long").val("");
  //   });
  // });

 

  
  $("#submit-place-form").on('click', function(){

        // var marker = new google.maps.Marker({
        //   position: new google.maps.LatLng($("#new-lat").val(),$("#new-long").val()),
        //   map: map,
        //   title: 'newLocation'
        // });

    if ($("#new-title").val().length > 0 && $("#new-lat").val().length > 0 && $("#new-long").val().length > 0){
      $.ajax({
        url: "/places",
        type: "POST",
        dataType: "JSON",
        data: { place : {"title" : $("#new-title").val(), "image" : $("#new-image").val(), "description" : $("#new-description").val(), "lat" : $("#new-lat").val(), "lng": $("#new-long").val(), "user_id" : parseInt($("#user-id").text())}}
      }).done(function(response){
        console.log(response)
       
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
  })

})











