require 'spec_helper'

describe "qualities/new" do
  before(:each) do
    assign(:quality, stub_model(Quality,
      :value => "MyString"
    ).as_new_record)
  end

  it "renders new quality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => qualities_path, :method => "post" do
      assert_select "input#quality_value", :name => "quality[value]"
    end
  end
end
