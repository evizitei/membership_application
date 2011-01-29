require 'spec_helper'

describe MembershipApplication do
  it {should validate_presence_of :social_security_number}
  it {should validate_presence_of :birth_date}

  describe "ssn validation" do
    it {should allow_value("123456789").for(:social_security_number)}
    it {should_not allow_value("Z2345678A").for(:social_security_number)}
    it {should_not allow_value("12345678912").for(:social_security_number)}
    it {should_not allow_value("1234567").for(:social_security_number)}
  end
   
  describe "ssn manipulation" do
    describe "removing whitespace" do
      it "strips from ends" do
        MembershipApplication.new(:social_security_number=>"  12345  ").social_security_number.should == "12345"
      end

      it "removes from center" do
        MembershipApplication.new(:social_security_number=>"1 2 3 4 5").social_security_number.should == "12345"
      end
    end

    it "removes dashes" do
      MembershipApplication.new(:social_security_number=>"1-2-34-5").social_security_number.should == "12345"
    end
  end
end