$(document).on('turbolinks:load', function(){
  $('#diary').turn(
    {
      width: 1000,
      height: 700,
      elevation: 50,
      duration: 1000,
      gradients: true,
      autoCenter: true,
      direction: 'ltr',      
      
    }
  );

  $('#prev-page').click(function(){
    $('#diary').turn('previous')
  });
  $('#next-page').click(function(){
    $('#diary').turn('next')
  });

});
