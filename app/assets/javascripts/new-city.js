$(document).ready(function(){

  $(".new-city-form").hide();

  $("#new-city").on('click', function(){

    $(".new-city-form").fadeIn('slow');

    var input = document.getElementById('new-city-input');
    // var options = {componentRestrictions: {country: 'us'}};
    new google.maps.places.Autocomplete(input);

    $("#create-new-city").on('click', function(){
      var city = $('#new-city-input').val();
      $.ajax({
        url: "/cities",
        type: 'POST',
        dataType: 'json',
        data: { city : {name : city}}
      }).done(function(response){
        $("#user_city_id").children().first().val(response.id)
        $("#user_city_id").children().first().text(response.name)

        // ('<option value=' + response.id + '>' + response.name + '</option>')
      });
      $(".new-city-form").hide();
    });
  });
});