require 'rails_helper'

RSpec.describe "schedules/show", type: :view do

  before(:all) do
    @user = User.create(email: "user@user.com", password: "12345678")
  end

  before(:each) do
    @user = User.find_by(email: "user@user.com")
    @schedule = assign(:schedule, Schedule.create!(
      user: @user
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
