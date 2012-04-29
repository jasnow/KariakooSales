require 'spec_helper'

describe "price_receipt_units/new" do
  before(:each) do
    assign(:price_receipt_unit, stub_model(PriceReceiptUnit,
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new price_receipt_unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => price_receipt_units_path, :method => "post" do
      assert_select "input#price_receipt_unit_value", :name => "price_receipt_unit[value]"
    end
  end
end
