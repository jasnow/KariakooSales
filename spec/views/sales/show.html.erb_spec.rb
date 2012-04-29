require 'spec_helper'

describe "sales/show" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :farmer_name => "Farmer Name",
      :market_type => "Market Type",
      :location => "Location",
      :volume => 1,
      :unit => "Unit",
      :quality => "Quality",
      :commodity => "Commodity",
      :price_received => 2,
      :price_receiptUnit => "Price Receipt Unit"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Farmer Name/)
    rendered.should match(/Market Type/)
    rendered.should match(/Location/)
    rendered.should match(/1/)
    rendered.should match(/Unit/)
    rendered.should match(/Quality/)
    rendered.should match(/Commodity/)
    rendered.should match(/2/)
    rendered.should match(/Price Receipt Unit/)
  end
end
