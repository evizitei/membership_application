class SkillsController < ApplicationController
  
  
  def new
    @skill = Skill.new
    render :layout=>false
  end
end
