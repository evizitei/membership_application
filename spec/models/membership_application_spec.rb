require 'spec_helper'

describe MembershipApplication do
  it { should belong_to :position}
  
  it {should validate_presence_of :social_security_number}
  it {should validate_presence_of :birth_date}
  it {should validate_presence_of :reason_for_joining}

  describe "ssn" do
    describe " validation" do
      it {should allow_value("123456789").for(:social_security_number)}
      it {should_not allow_value("Z2345678A").for(:social_security_number)}
      it {should_not allow_value("12345678912").for(:social_security_number)}
      it {should_not allow_value("1234567").for(:social_security_number)}
    end
    
    describe "encryption" do
      before(:each) do
        @app = Factory(:membership_application,:social_security_number=>"702891357")
      end
      
      it "should be encrypted" do
        @app.encrypted_social_security_number.should == "90m2H1zBFuaDW3Kx/zi+oQ==\n"
      end
    end
   
    describe "manipulation" do
      def test_ssn_manipulation(input,output)
        app = Factory(:membership_application)
        app.social_security_number = input
        app.save
        app.reload.social_security_number.should == output
      end
      
      describe "removing whitespace" do
        it "strips from ends" do
          test_ssn_manipulation("  123456789  ","123456789")
        end
        
        it "removes from center" do
          test_ssn_manipulation("12 3 4567 8 9","123456789")
        end
      end
              
      it "removes dashes" do
        test_ssn_manipulation("123-45-6789","123456789")
      end
    end
  end
  
  describe "reason for joining" do
    describe "validation" do
      let(:too_short){ "a few words"}
      let(:long_enough){ "a set of words at least one hundred and fourty characters long that details why somebody wants to join the fire department, that's at least one tweet which shouldn't be that hard."}
    
      it{should allow_value(long_enough).for(:reason_for_joining)}
      it{should_not allow_value(too_short).for(:reason_for_joining)}
    end  
  end

  describe "felony conviction" do
    it{ should allow_value(true).for(:has_crime_convictions)}
    it{ should allow_value(false).for(:has_crime_convictions)}
    it{ should_not allow_value(nil).for(:has_crime_convictions)}
  end
end