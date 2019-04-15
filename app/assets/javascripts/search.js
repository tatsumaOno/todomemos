$(function(){
  $('.search_form').on('keyup',function(){
    var input = $('.search_form').val();
    console.log(input);
    $.ajax({
        type: "GET",
        url: "/top/search",
        data: {keyword: input},
        dataType:'json'
    })
  });
});
