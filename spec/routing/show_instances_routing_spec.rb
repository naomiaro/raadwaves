require "rails_helper"

RSpec.describe ShowInstancesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/show_instances").to route_to("show_instances#index")
    end

    it "routes to #new" do
      expect(:get => "/show_instances/new").to route_to("show_instances#new")
    end

    it "routes to #show" do
      expect(:get => "/show_instances/1").to route_to("show_instances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/show_instances/1/edit").to route_to("show_instances#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/show_instances").to route_to("show_instances#create")
    end

    it "routes to #update" do
      expect(:put => "/show_instances/1").to route_to("show_instances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/show_instances/1").to route_to("show_instances#destroy", :id => "1")
    end

  end
end
