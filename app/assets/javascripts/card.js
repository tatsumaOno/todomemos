$(function(){
  // $('.list').sortable({
  //     revert: true
  //   });
  // $('.card').droppable();
  // $('.card').draggable({
  //   connectToSortable: '.list',
  //   containment: 'document',
  //   helper: 'clone',//クローン（残像）を出す設定
  //   start: function(){
  //       $(this).hide();//ドラッグ中はクローン元を消す
  //   },
  //   stop: function(){
  //       $(this).show()//移動後にクローン元（移動済み）を表示させる
  //   }});
  $( '.cardDetail_link' ).sortable({
      connectWith: '.cardWrapper'
  });
  $('.list').disableSelection();
  // $( '.card-connectToSortable' ).disableSelection();
})

