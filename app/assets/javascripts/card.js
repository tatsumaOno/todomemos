$(document).on('turbolinks:load', function() {
  $('.list').sortable({
      revert: true
    });
  $('.card').draggable({
    connectToSortable: '.list',
    // containment: 'document',
    helper: 'original',//クローン（残像）を出す設定
    start: function(event,ui){
        $(ui.helper).css({
        'width': $(this).width()

      });// $(this).hide();//ドラッグ中はクローン元を消す
    },
    stop: function(event,ui){
        // $(this).show();//移動後にクローン元（移動済み）を表示させる
    }});

  var se = $('.text-successsound');

  $('.text-success').on('click',function(){
    se[0].currentTime = 0;
    se[0].play();
  });
});
// $(function(){
//   $('.list').sortable({
//       revert: true
//     });
//   $('.card').draggable({
//     connectToSortable: '.list',
//     // containment: 'document',
//     helper: 'original',//クローン（残像）を出す設定
//     start: function(event,ui){
//         $(ui.helper).css({
//         'width': $(this).width()

//       });// $(this).hide();//ドラッグ中はクローン元を消す
//     },
//     stop: function(event,ui){
//         // $(this).show();//移動後にクローン元（移動済み）を表示させる
//     }});

//   var se = $('.text-successsound');

//   $('.text-success').on('click',function(){
//     se[0].currentTime = 0;
//     se[0].play();
//   });
  // $( '.cardDetail_link' ).sortable({
  //     connectWith: '.cardWrapper'
  // });
  // $('.list').disableSelection();

// Sortable.create('.cardDetail_link');
  // $( '.card-connectToSortable' ).disableSelection();
// })

