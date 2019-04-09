$(document).on('turbolinks:load',function(){
  $('.navbar__list li').hover(function(){
      $('.navbar__list li i',this).css({'font-size':'20px','transition':'0.3s'});
      $("ul:not(:animated)", this).slideDown(1000);
  },function(){
      $("ul.navbar__items",this).slideUp(500);
      $('.navbar__list li i',this).css({'font-size':'50px','transition':'0.3s'});
  });


});
