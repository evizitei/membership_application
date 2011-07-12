$(function(){
  dialog_init();
  date_selector_init();
  format_fields_init();
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

function format_fields_init(){
  $(".phone_input").mask("(999) 999-9999");
  $(".zip_input").mask("99999");
  $(".month_year_input").mask("99/9999");
}