require "rails_helper"

  RSpec.describe User, :type => :model do
    before do
      @user = User.create!(first_name: "James", last_name: "Smith", email: "jsmith@test.com", password: "guest123")
    end
    
  subject { @user }
    
    it "should return first name and last name" do
      expect(@user.first_name).to eq "James"
      expect(@user.last_name).to eq "Smith"
    end
    
    it "should return first name" do
      expect(@user.first_name).to eq "James"
    end
    
    it "should return last name" do
      expect(@user.last_name).to eq "Smith"
    end
  end