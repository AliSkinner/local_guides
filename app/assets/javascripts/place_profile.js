$(document).ready(function(){
 $("#place-profile").hide()
 $(".close-window").on('click', function(){
  $("#comment-section").hide();
  // $(this).siblings().hide()
  $(this).parent().fadeToggle('slow');
 });
});