require 'rails_helper'

RSpec.describe "Pages", type: :request do
  

  it "Get root page" do
    get root_url, as: :html
    expect(response).to be_successful  
  end

end
