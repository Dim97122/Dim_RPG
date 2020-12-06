require 'rails_helper'

RSpec.describe "Turns", type: :request do
  describe "GET /turns" do
    it "works! (now write some real specs)" do
      get turns_path
      expect(response).to have_http_status(200)
    end
  end
end
