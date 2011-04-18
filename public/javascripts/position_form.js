function checkNaN(n) { return !(n >= 0 || n < 0); }

function biggest_skill_index(){
  var indexes = $("input[type='text'][id*=position_skills_attributes]").map(function(idx,element){ 
    var index = parseInt($(element).attr("id").match(/\d/));
    if(checkNaN(index)){
      return -1;
    }else{
      return index;
    }
  });
  return Math.max.apply(Math,indexes.toArray());
}

function remove_skill(e){
  e.preventDefault();
  var wrapper = $(this).parents(".skill");
  wrapper.hide();
  wrapper.find("input[name*=_destroy]").attr("val","1");
}

function add_new_skill(){
  var html = $("#skill_template").html();
  var new_index = biggest_skill_index() + 1;
  html = html.replace(/IDX/g,new_index);
  $("#position_skills").append(html);
}

$(function(){
  $("#skill_adder").bind("click",add_new_skill);
  $(".skill_killer").live("click",remove_skill);
});
