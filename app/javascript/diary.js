$(function(){
  $('#diary').turn(
    {
      //自動でページをめくった時の高さ
      elevation: 50,

      duration: 1000,

      gradients: true,

      autoCenter: false,

      direction: 'ltr',
    }
  );

  $('#prev-page').click(function(){
    $('#diary').turn('previous')
  })
  $('#next-page').click(function(){
    $('#diary').turn('next')
  })
});