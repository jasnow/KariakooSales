require 'spec_helper'

describe "price_receipt_units/edit" do
  before(:each) do
    @price_receipt_unit = assign(:price_receipt_unit, stub_model(PriceReceiptUnit,
      :value => "MyString"
    ))
  end

  it "renders the edit price_receipt_unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => price_receipt_units_path(@price_receipt_unit), :method => "post" do
      assert_select "input#price_receipt_unit_value", :name => "price_receipt_unit[value]"
    end
  end
end
