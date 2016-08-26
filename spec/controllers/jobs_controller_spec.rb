require 'rails_helper'

RSpec.describe JobsController, type: :controller do

  describe "GET #portfolio" do
    it "returns http success" do
      get :portfolio
      expect(response).to have_http_status(:success)
    end
  end

end
