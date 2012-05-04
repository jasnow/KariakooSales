require 'spec_helper'

describe "parents/new" do
  before(:each) do
    assign(:parent, stub_model(Parent).as_new_record)
  end

  it "renders new parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parents_path, :method => "post" do
    end
  end
end
