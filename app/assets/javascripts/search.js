$(function(){

var search_list = $(".search-result");

function appendCard(card){
    var html = `<div class="search-result-card-container">
        <a class="card-card",href=" /list/${card.list_id}/card/${card.id}">${card.title}</a>
        </div>
        <div class="search-result-card-details">
            <p><a href="/list/${card.list_id}/card/${card.id}">${card.title}</a></p>
        </div>`
    search_list.append(html);
}

function appendErrMsgToHTML(msg){
    var html = `<div class="msg">${msg}</div>`

    search_list.append(html);
}

  $('.search_form').on('keyup',function(){
    var input = $('.search_form').val();
        if (input == ""){
            search_list.empty();
            return;
        }
    $.ajax({
        type: "GET",
        url: "/top/search",
        data: {keyword: input},
        dataType:'json'
    })

    .done(function(cards){
        console.log(cards);
        $('.search-result').empty();
        if (cards.length !== 0){
            cards.forEach(function(card){
                appendCard(card);
            });
        }else{
            appendErrMsgToHTML("一致するカードがありません")
        }
        preCard = card
    })
  });
});
