require 'rails_helper'

RSpec.describe "schedules/edit", type: :view do

  before(:all) do
    @user = User.create(email: "user@user.com", password: "12345678")
  end

  before(:each) do
    @user = User.find_by(email: "user@user.com")
    @schedule = assign(:schedule, Schedule.create!(
      user: @user
    ))
  end

  it "renders the edit schedule form" do
    render

    assert_select "form[action=?][method=?]", schedule_path(@schedule), "post" do

      assert_select "input[name=?]", "schedule[user_id]"
    end
  end
end
