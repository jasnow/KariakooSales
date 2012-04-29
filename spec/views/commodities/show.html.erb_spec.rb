require 'spec_helper'

describe "commodities/show" do
  before(:each) do
    @commodity = assign(:commodity, stub_model(Commodity,
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Value/)
  end
end
