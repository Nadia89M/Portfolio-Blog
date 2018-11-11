$(document).on('turbolinks:load', function() {
  setTimeout(function(){
    $('.notice').fadeOut();
  }, 4000);
});

$(document).on('turbolinks:load', function() {
  setTimeout(function(){
    $('.alert').fadeOut();
  }, 4000);
});
