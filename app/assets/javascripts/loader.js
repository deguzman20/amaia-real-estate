$(".actual-image, .actual-location-info, .actual-fullname").hide();

$(function(){    
  $('.carousel').carousel({
    interval: 2000
  });

  $(window).on('load', function(){
    $(".image-loader, .location-info-loader, .specific-location-loader, .fullname-loader").delay(1000).fadeOut(1);
    $(".actual-image, .actual-location-info, .actual-fullname").delay(1000).fadeIn(1001);
  }); 
});