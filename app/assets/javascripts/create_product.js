var sub_id = 0
var item_id = 0
function get_pulldown_val(){
  // メインカテゴリーのval取得
  $('#product_sub_category_id').on('click', function(){
    sub_id = $('#product_category_id').val()
    console.log(sub_id)
  });
  // サブカテゴリーのvalを取得
  $('#product_item_id').on('click', function(){
    item_id = $('#product_sub_category_id').val()
    console.log(item_id)
  });
  // ajaxの処理
  // var url = $(this).attr('action');
  // $.ajax({
  //     url: url,
  //     type: "GET",
  //     data: formData,
  //     dataType: 'json',
  //     processData: false,
  //     contentType: false
  // })

  // .done(function(data){

  // })

  // .fail(function(){
  //     alert('メッセージが選択されていません');
  // })
}

// メイン処理
$(function() {
  get_pulldown_val()
});
