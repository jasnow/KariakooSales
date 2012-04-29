require "spec_helper"

describe PriceReceiptUnitsController do
  describe "routing" do

    it "routes to #index" do
      get("/price_receipt_units").should route_to("price_receipt_units#index")
    end

    it "routes to #new" do
      get("/price_receipt_units/new").should route_to("price_receipt_units#new")
    end

    it "routes to #show" do
      get("/price_receipt_units/1").should route_to("price_receipt_units#show", :id => "1")
    end

    it "routes to #edit" do
      get("/price_receipt_units/1/edit").should route_to("price_receipt_units#edit", :id => "1")
    end

    it "routes to #create" do
      post("/price_receipt_units").should route_to("price_receipt_units#create")
    end

    it "routes to #update" do
      put("/price_receipt_units/1").should route_to("price_receipt_units#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/price_receipt_units/1").should route_to("price_receipt_units#destroy", :id => "1")
    end

  end
end
