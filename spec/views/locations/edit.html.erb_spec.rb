require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "MyString",
      :town => "MyString",
      :ward => "MyString",
      :district => "MyString",
      :region => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path(@location), :method => "post" do
      assert_select "input#location_name", :name => "location[name]"
      assert_select "input#location_town", :name => "location[town]"
      assert_select "input#location_ward", :name => "location[ward]"
      assert_select "input#location_district", :name => "location[district]"
      assert_select "input#location_region", :name => "location[region]"
    end
  end
end
