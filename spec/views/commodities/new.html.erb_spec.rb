require 'spec_helper'

describe "commodities/new" do
  before(:each) do
    assign(:commodity, stub_model(Commodity,
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new commodity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commodities_path, :method => "post" do
      assert_select "input#commodity_value", :name => "commodity[value]"
    end
  end
end
