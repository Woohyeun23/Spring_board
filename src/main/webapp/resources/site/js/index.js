$(document).ready(function() {

const nav_menuD = $('.nav_menu');

    $('.nav_menu').click(function() {
      console.log('버튼을 클릭함');
     
  });

    nav_menuD.on('mouseover', function(){
      console.log('마우스가 버튼에 올라감');
      var navMenuA= $(this).find('a');  
      navMenuA.css('color','initial');
      navMenuA.css('color','#fffb82');

      // $(this).find('.nav_menu a').css('color','initial');
      // $(this).find('.nav_menu a').css('color','#fffb82');

      //코드를 추가하게 만들기

  })

    nav_menuD.on('mouseout', function(){
      console.log('마우스가 버튼에 올라감');
      var navMenuA= $(this).find('a');  
      navMenuA.css('color','initial');
      navMenuA.css('color','#fff');

      // $(this).find('.nav_menu a').css('color','initial');
      // $(this).find('.nav_menu a').css('color','#fffb82');

      //코드를 추가하게 만들기

  })





  });