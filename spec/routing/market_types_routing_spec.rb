require "spec_helper"

describe MarketTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/market_types").should route_to("market_types#index")
    end

    it "routes to #new" do
      get("/market_types/new").should route_to("market_types#new")
    end

    it "routes to #show" do
      get("/market_types/1").should route_to("market_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/market_types/1/edit").should route_to("market_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/market_types").should route_to("market_types#create")
    end

    it "routes to #update" do
      put("/market_types/1").should route_to("market_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/market_types/1").should route_to("market_types#destroy", :id => "1")
    end

  end
end
