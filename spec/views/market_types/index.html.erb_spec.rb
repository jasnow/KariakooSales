require 'spec_helper'

describe "market_types/index" do
  before(:each) do
    assign(:market_types, [
      stub_model(MarketType,
        :value => "Value"
      ),
      stub_model(MarketType,
        :value => "Value"
      )
    ])
  end

  it "renders a list of market_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
