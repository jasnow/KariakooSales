require 'spec_helper'

describe "PriceReceiptUnits" do
  describe "GET /price_receipt_units" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get price_receipt_units_path
      response.status.should be(200)
    end
  end
end
