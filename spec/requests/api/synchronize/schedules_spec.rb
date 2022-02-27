require 'rails_helper'

RSpec.describe "Api::Synchronize::Schedules", type: :request do
  
  before(:all) do
    @user = User.create(email: "user@synchronize.com", password: "123456789")
  end

  describe "POST /create" do

    let(:valid_schedule){
      {
        :start_date => Date.today,
        :end_date => Date.today + 1.day,
      }
    }

    let(:registered_user){
      {
        :email => @user.email
      }
    }

    let(:unregistered_user){
      {
        :email => "not@registered.com"
      }
    }

    it "with a registered user" do
      post api_synchronize_create_schedule_url, params: { schedule: valid_schedule, user: registered_user }
      expect(response).to have_http_status(:created)
    end

    it "with a unregistered user" do
      post api_synchronize_create_schedule_url, params: {schedule: valid_schedule, user: unregistered_user}
    end

  end

end
