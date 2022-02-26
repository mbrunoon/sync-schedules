require 'rails_helper'

RSpec.describe "Pages", type: :request do
  

  it "get root page" do
    get root_url, as: :html
    expect(response).to be_successful  
  end

end
