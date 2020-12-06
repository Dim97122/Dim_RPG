require "rails_helper"

RSpec.describe TurnsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/turns").to route_to("turns#index")
    end

    it "routes to #new" do
      expect(:get => "/turns/new").to route_to("turns#new")
    end

    it "routes to #show" do
      expect(:get => "/turns/1").to route_to("turns#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/turns/1/edit").to route_to("turns#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/turns").to route_to("turns#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/turns/1").to route_to("turns#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/turns/1").to route_to("turns#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/turns/1").to route_to("turns#destroy", :id => "1")
    end
  end
end
