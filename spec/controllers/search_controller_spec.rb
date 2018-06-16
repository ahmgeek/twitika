require "rails_helper"

RSpec.describe SearchController do
  describe "GET index" do
    let(:search) { "trump" }

    it "returnrs empty response" do
      get :index
      expect(response.status).to be 200
    end

    it "returns tweets" do
      get :search, params: { search: search }

      expect(response.status).to be 200
      expect(assigns(:tweete)).not_to be_nil
      expect(response).to render_template("index")
    end
  end
end
