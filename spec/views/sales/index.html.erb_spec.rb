require 'spec_helper'

describe "sales/index" do
  before(:each) do
    assign(:sales, [
      stub_model(Sale,
        :farmer_name => "Farmer Name",
        :market_type => "Market Type",
        :location => "Location",
        :volume => 1,
        :unit => "Unit",
        :quality => "Quality",
        :commodity => "Commodity",
        :price_received => 2,
        :price_receiptUnit => "Price Receipt Unit"
      ),
      stub_model(Sale,
        :farmer_name => "Farmer Name",
        :market_type => "Market Type",
        :location => "Location",
        :volume => 1,
        :unit => "Unit",
        :quality => "Quality",
        :commodity => "Commodity",
        :price_received => 2,
        :price_receiptUnit => "Price Receipt Unit"
      )
    ])
  end

  it "renders a list of sales" do
    pending
    #render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #assert_select "tr>td", :text => "Farmer Name".to_s, :count => 2
    #assert_select "tr>td", :text => "Market Type".to_s, :count => 2
    #assert_select "tr>td", :text => "Location".to_s, :count => 2
    #assert_select "tr>td", :text => 1.to_s, :count => 2
    #assert_select "tr>td", :text => "Unit".to_s, :count => 2
    #assert_select "tr>td", :text => "Quality".to_s, :count => 2
    #assert_select "tr>td", :text => "Commodity".to_s, :count => 2
    #assert_select "tr>td", :text => 2.to_s, :count => 2
    #assert_select "tr>td", :text => "Price Receipt Unit".to_s, :count => 2
  end
end
