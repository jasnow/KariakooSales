require 'spec_helper'

describe "parents/index" do
  before(:each) do
    assign(:parents, [
      stub_model(Parent),
      stub_model(Parent)
    ])
  end

  it "renders a list of parents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
