require 'rails_helper'

RSpec.describe "Admin::Keys", type: :request do
  describe "GET /admin_keys" do
    it "works! (now write some real specs)" do
      get admin_keys_path
      expect(response).to have_http_status(200)
    end
  end
end
