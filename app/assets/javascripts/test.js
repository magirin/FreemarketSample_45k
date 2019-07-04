$(function() {
  $("#category li,#bland li").hover(function() {
    $(this).children('ul').show();
  }, function() {
    $(this).children('ul').hide();
  });
  $(".submenu ul li a").hover(function() {
    $(this).closest('.submenu').css(
      {backgroundColor: "#0000ff"}
    ), function() {
      $(".submenu").css(
      {backgroundColor: "#000000"}
    )};
  });
});
