require "spec_helper"

describe GeosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/geos").to route_to("geos#index")
    end

    it "routes to #new" do
      expect(:get => "/geos/new").to route_to("geos#new")
    end

    it "routes to #show" do
      expect(:get => "/geos/1").to route_to("geos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/geos/1/edit").to route_to("geos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/geos").to route_to("geos#create")
    end

    it "routes to #update" do
      expect(:put => "/geos/1").to route_to("geos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/geos/1").to route_to("geos#destroy", :id => "1")
    end

  end
end
