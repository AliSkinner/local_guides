$(document).ready(function(){

  $('#current-user-reveal').on('click', function(){
    $("#main-map-view").hide('slow')
    $("#current-user-view").show('slow')
  });

  $('#map-view-reveal').on('click', function(){
    $("#current-user-view").hide('slow')
    $("#main-map-view").show('slow')
  });


})