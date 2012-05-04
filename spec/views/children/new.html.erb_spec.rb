require 'spec_helper'

describe "children/new" do
  before(:each) do
    assign(:child, stub_model(Child).as_new_record)
  end

  it "renders new child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => children_path, :method => "post" do
    end
  end
end
