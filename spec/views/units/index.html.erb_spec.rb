require 'spec_helper'

describe "units/index" do
  before(:each) do
    assign(:units, [
      stub_model(Unit,
        :value => "Cups"
      ),
      stub_model(Unit,
        :value => "Cups"
      )
    ])
  end

  it "renders a list of units" do
    pending
    #render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
