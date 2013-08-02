$(document).ready(function(){
  $('#about').click(function(){
    $('.printer-content').children().hide();
    $('#about-content').toggle();
  });

  $('#customer-service').click(function(){
    $('.printer-content').children().hide();
    $('#customer-service-content').toggle();
  });

  $('#services').click(function(){
    $('.printer-content').children().hide();
    $('#services-content').toggle();
  });

  $('#terms').click(function(){
    $('.printer-content').children().hide();
    $('#terms-content').toggle();
  });

  $('#price-list').click(function(){
    $('.printer-content').children().hide();
    $('#price-list-content').toggle();
  });

  $('#garment-list').click(function(){
    $('.printer-content').children().hide();
    $('#garments-list-content').toggle();
  });

  $('#summary').click(function(){
    $('.printer-content').children().hide();
    $('#summary-content').show();
  });
});