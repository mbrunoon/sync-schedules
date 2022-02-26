require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  
  before(:all) do
    @user = User.create(email: "user@user.com", password: "12345678")
  end

  before(:each) do
    @user = User.find_by(email: "user@user.com")
    assign(:schedule, Schedule.new(
      user: @user
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input[name=?]", "schedule[user_id]"
    end
  end
end
