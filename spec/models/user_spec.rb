require 'rails_helper'

RSpec.describe User, type: :model do
  
  before(:all) do
    @userOne = User.create(email: "one@user.com", password: "12345678")
    @userTwo = User.create(email: "two@user.com", password: "12345678")
  end

  let(:valid_attributes){
    {
      :email => "three@user.com", 
      :password => "12345678"
    }
  }

  it "validate user Three attributes" do
    @userThree = User.new(valid_attributes)
    expect(@userThree).to be_valid
  end

  it "validate uniqueness of email" do
    @userThree = User.new(valid_attributes)
    @userThree.email = @userOne.email
    expect(@userThree).to_not be_valid
  end

  it "validate lengt of pasword" do
    @userThree = User.new(valid_attributes)
    @userThree.password = "123"
    expect(@userThree).to_not be_valid
  end


end
