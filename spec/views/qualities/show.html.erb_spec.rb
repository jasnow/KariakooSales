require 'spec_helper'

describe "qualities/show" do
  before(:each) do
    @quality = assign(:quality, stub_model(Quality,
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Value/)
  end
end
