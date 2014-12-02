require 'rails_helper'

RSpec.describe "ShowInstances", :type => :request do
  describe "GET /show_instances" do
    it "works! (now write some real specs)" do
      get show_instances_path
      expect(response).to have_http_status(200)
    end
  end
end
