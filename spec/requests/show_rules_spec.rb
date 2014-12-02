require 'rails_helper'

RSpec.describe "ShowRules", :type => :request do
  describe "GET /show_rules" do
    it "works! (now write some real specs)" do
      get show_rules_path
      expect(response).to have_http_status(200)
    end
  end
end
