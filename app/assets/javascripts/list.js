$(function(){
  $('.navbar__list li').hover(function(){
      $("ul:not(:animated)", this).slideDown();
  },function(){
      $("ul.navbar__items",this).slideUp();
  });
  $('.navbar__list li').click(function(){
    console.log('navbar__items');
  });
});
