function open_position_dialog(){
  var position_id = $(this).parents(".position_row").attr("data-id");
  $("input#position_id").val(position_id);
  $("#open_position_dialog").dialog({
    modal: true
  });
}

function open_loud(){
  $("input#notify").val("yes");
  $("form#open_position_form").submit();
}

function open_quiet(){
  $("input#notify").val("no");
  $("form#open_position_form").submit();
}

$(function(){
  $(".open_button").bind("click",open_position_dialog);
  $("#notify_list").bind("click",open_loud);
  $("#soft_open").bind("click",open_quiet);
});