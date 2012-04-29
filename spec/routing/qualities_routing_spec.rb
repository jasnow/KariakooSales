require "spec_helper"

describe QualitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/qualities").should route_to("qualities#index")
    end

    it "routes to #new" do
      get("/qualities/new").should route_to("qualities#new")
    end

    it "routes to #show" do
      get("/qualities/1").should route_to("qualities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/qualities/1/edit").should route_to("qualities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/qualities").should route_to("qualities#create")
    end

    it "routes to #update" do
      put("/qualities/1").should route_to("qualities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/qualities/1").should route_to("qualities#destroy", :id => "1")
    end

  end
end
