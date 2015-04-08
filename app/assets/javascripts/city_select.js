$(document).ready(function(){

  $("#main-map-view").css("height", $(window).height());

  function getCityNames() {
    $.ajax({
      url: "/cities",
      type: "GET",
      dataType: "json"
    }).done(function(response){
      // console.log(response)
      $.each(response, function(index, value){
        $("#city-select").append('<option value=' + value.id + '>' + value.name + '</option>')
      });
    });
  };
  getCityNames();

  function renderCity(cityId){
    $.ajax({
      url: "/cities/" + cityId,
      type: "GET",
      dataType: "json"
    }).done(function(response){
      console.log(response)
    });
  };


  var dropDown = $("#city-select");
  dropDown.on('change', function(){
    console.log($(this).val());
    renderCity($(this).val());
  })



})