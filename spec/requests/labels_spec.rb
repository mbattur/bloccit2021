require 'rails_helper'

RSpec.describe "Labels", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/labels/show"
      expect(response).to have_http_status(:success)
    end
  end

end
