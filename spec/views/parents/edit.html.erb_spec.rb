require 'spec_helper'

describe "parents/edit" do
  before(:each) do
    @parent = assign(:parent, stub_model(Parent))
  end

  it "renders the edit parent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parents_path(@parent), :method => "post" do
    end
  end
end
