$(function(){
  dialog_init();
  date_selector_init();
});

function dialog_init(){
  if($("#errorExplanation").length == 0){
    if($(".modal").length > 0){
      $(".modal").dialog({
        modal: true,
        width: 600
      });
    }
  }
}

function date_selector_init(){
  $(".datepicker").datepicker({
  			changeMonth: true,
  			changeYear: true
  		});
}