require 'spec_helper'

describe "market_types/new" do
  before(:each) do
    assign(:market_type, stub_model(MarketType,
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new market_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => market_types_path, :method => "post" do
      assert_select "input#market_type_value", :name => "market_type[value]"
    end
  end
end
