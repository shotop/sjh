$(function() {
  $('#profile-data').affix({
    offset: {
      bottom: function () {
        return (this.bottom = $('.footer').outerHeight(true))
      }
    }
  });
});