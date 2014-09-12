$(function() {

  $('.navbar').data('size','big');


  $(window).scroll(function(){
      var $nav = $('.navbar');
      if ($('body').scrollTop() > 0) {
          if ($nav.data('size') == 'big') {
              $nav.data('size','small').stop().animate({
                  height:'40px'
              }, 150);
          }
      } else {
          if ($nav.data('size') == 'small') {
              $nav.data('size','big').stop().animate({
                  height:'100px'
              }, 150);
          }
      }
  });


  $("#down_direction_arrow").click(function() {
      $('html, body').animate({
          scrollTop: $("#aboutwrap").offset().top
      }, 1000);
  });

  $("#down_direction_arrow").mouseup(function(){
      $(this).blur();
  });
});