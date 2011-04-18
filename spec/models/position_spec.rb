require 'spec_helper'

describe Position do
  it{ should have_many :membership_applications}
  it{ should validate_presence_of :name}
  
  describe "open finder" do
    before(:each) do
      @open_position = Factory(:open_position)
      @closed_position = Factory(:closed_position)
    end
    
    subject{ Position.open.all }
    it { should include(@open_position) }
    it { should_not include(@closed_position) }
  end
  
  describe "skills collection" do
    it "can create with multiple skills" do
      params = {:name => 'some position', 
                :skills_attributes => [
                  {:name => 'Skill 1' },
                  {:name => 'Skill 2' }]
        }
      position = Position.create!(params)
      position.reload.skills.size.should == 2
    end
  end
end
