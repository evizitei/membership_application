$(function(){
  if($("#membership_application_last_name").val().length <= 0){
    $(".modal").dialog({
      modal: true
    });
  }
});