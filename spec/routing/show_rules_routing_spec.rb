require "rails_helper"

RSpec.describe ShowRulesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/show_rules").to route_to("show_rules#index")
    end

    it "routes to #new" do
      expect(:get => "/show_rules/new").to route_to("show_rules#new")
    end

    it "routes to #show" do
      expect(:get => "/show_rules/1").to route_to("show_rules#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/show_rules/1/edit").to route_to("show_rules#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/show_rules").to route_to("show_rules#create")
    end

    it "routes to #update" do
      expect(:put => "/show_rules/1").to route_to("show_rules#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/show_rules/1").to route_to("show_rules#destroy", :id => "1")
    end

  end
end
