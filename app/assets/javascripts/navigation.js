$(document).ready(function(){


  $('#map-view-reveal').on('click', function(){
    $("#current-user-view").hide('slow')
    $("#main-map-view").show('slow')
  });

  $("#current-user-link").on('click', function(){
    console.log("click")
    $("#main-map-view").hide('slow')
    $("#current-user-view").show('slow')
  });

  

})