$(function(){
  $("a.pdf_link").bind("click",function(){
    var link = $(this);
    $.post("/membership_applications/mark_reviewed",{id: link.attr("data-app_id")},function(){
      link.parents("li.pending_application").style('background-color','green');
    });
  });
});