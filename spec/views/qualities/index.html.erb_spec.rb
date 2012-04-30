require 'spec_helper'

describe "qualities/index" do
  before(:each) do
    assign(:qualities, [
      stub_model(Quality,
        :value => "Value"
      ),
      stub_model(Quality,
        :value => "Value"
      )
    ])
  end

  it "renders a list of qualities" do
    pending
    #render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    #assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
