require 'spec_helper'

describe "market_types/show" do
  before(:each) do
    @market_type = assign(:market_type, stub_model(MarketType,
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Value/)
  end
end
