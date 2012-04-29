require 'spec_helper'

describe "Qualities" do
  describe "GET /qualities" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get qualities_path
      response.status.should be(200)
    end
  end
end
