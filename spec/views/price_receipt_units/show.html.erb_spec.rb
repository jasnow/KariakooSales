require 'spec_helper'

describe "price_receipt_units/show" do
  before(:each) do
    @price_receipt_unit = assign(:price_receipt_unit, stub_model(PriceReceiptUnit,
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Value/)
  end
end
