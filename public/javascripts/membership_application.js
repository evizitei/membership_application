$(function(){
  if($("#errorExplanation").length == 0){
    if($(".modal").length > 0){
      $(".modal").dialog({
        modal: true,
        width: 600
      });
    }
  }
});