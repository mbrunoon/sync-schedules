require 'rails_helper'

RSpec.describe Schedule, type: :model do
  
  before(:all) do
    @user = User.create(email: "user@user.com", password: "123456789")
  end

  describe "Relations" do

    it "belongs to user" do
      @schedule = Schedule.create(start_date: Date.today, end_date: Date.today, user: @user)
      expect(@schedule.user).to equal(@user)
    end

  end

  describe "Validations" do

    it "Start date cannot be less than End date" do
      schedule = Schedule.new(start_date: Date.today, end_date: (Date.today - 1.day), user: @user)
      expect(schedule).not_to be_valid
    end

  end

end
