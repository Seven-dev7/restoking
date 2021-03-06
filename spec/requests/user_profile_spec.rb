require 'rails_helper'

RSpec.describe "UserProfiles", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/user_profile/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/user_profile/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
