require 'spec_helper'

describe "commodities/index" do

  before(:each) do
    assign(:commodities, [
      stub_model(Commodity, :value => "Value" ),
      stub_model(Commodity, :value => "Value" )
    ])
  end

  it "renders a list of commodities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
