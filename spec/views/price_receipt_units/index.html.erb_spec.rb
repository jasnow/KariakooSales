require 'spec_helper'

describe "price_receipt_units/index" do
  before(:each) do
    assign(:price_receipt_units, [
      stub_model(PriceReceiptUnit,
        :value => "Value"
      ),
      stub_model(PriceReceiptUnit,
        :value => "Value"
      )
    ])
  end

  it "renders a list of price_receipt_units" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
