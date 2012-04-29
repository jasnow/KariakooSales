require 'spec_helper'

describe "market_types/edit" do
  before(:each) do
    @market_type = assign(:market_type, stub_model(MarketType,
      :value => "MyString"
    ))
  end

  it "renders the edit market_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => market_types_path(@market_type), :method => "post" do
      assert_select "input#market_type_value", :name => "market_type[value]"
    end
  end
end
