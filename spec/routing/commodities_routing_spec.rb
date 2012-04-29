require "spec_helper"

describe CommoditiesController do
  describe "routing" do

    it "routes to #index" do
      get("/commodities").should route_to("commodities#index")
    end

    it "routes to #new" do
      get("/commodities/new").should route_to("commodities#new")
    end

    it "routes to #show" do
      get("/commodities/1").should route_to("commodities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/commodities/1/edit").should route_to("commodities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/commodities").should route_to("commodities#create")
    end

    it "routes to #update" do
      put("/commodities/1").should route_to("commodities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/commodities/1").should route_to("commodities#destroy", :id => "1")
    end

  end
end
