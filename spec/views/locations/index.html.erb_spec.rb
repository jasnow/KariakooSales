require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :name => "Name",
        :town => "Town",
        :ward => "Ward",
        :district => "District",
        :region => "Region"
      ),
      stub_model(Location,
        :name => "Name",
        :town => "Town",
        :ward => "Ward",
        :district => "District",
        :region => "Region"
      )
    ])
  end

  it "renders a list of locations" do
    pending
    #render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #assert_select "tr>td", :text => "Name".to_s, :count => 2
    #assert_select "tr>td", :text => "Town".to_s, :count => 2
    #assert_select "tr>td", :text => "Ward".to_s, :count => 2
    #assert_select "tr>td", :text => "District".to_s, :count => 2
    #assert_select "tr>td", :text => "Region".to_s, :count => 2
  end
end
