require 'spec_helper'

describe "qualities/edit" do
  before(:each) do
    @quality = assign(:quality, stub_model(Quality,
      :value => "MyString"
    ))
  end

  it "renders the edit quality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => qualities_path(@quality), :method => "post" do
      assert_select "input#quality_value", :name => "quality[value]"
    end
  end
end
