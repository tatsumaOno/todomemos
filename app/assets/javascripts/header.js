$(function(){
  $('.navbar__list li').hover(function(){
      $('.fa-compass').css({'font-size':'20px','transition':'0.3s'});
      $("ul:not(:animated)", this).slideDown(500);
  },function(){
      $("ul.navbar__items",this).slideUp(500);
      $('.fa-compass').css({'font-size':'50px','transition':'0.3s'});
  });
  $('.navbar__list li').click(function(){
    console.log('navbar__items');
  });
});
