require 'spec_helper'

describe Unit do

  before(:each) do
    @attr = { 
      :value => "Cups"
    }
  end

  it "should create a new instance given valid attributes" do
    Unit.create(@attr)
  end

  it "should require a value" do
    no_unit_value = Unit.new(@attr.merge(:value => ""))
    no_unit_value.should_not be_valid
  end

  it "should reject too long values" do
    #HEH: Define "TOO LONG" 
    long_value = "a" * 51
    long_unit_value = Unit.new(@attr.merge(:value => long_value))
    long_unit_value.should_not be_valid
  end

  it "should reject too short values" do
    valid_value = Unit.new(@attr.merge(:value => ""))
    valid_value.should_not be_valid
  end

  it "should accept valid values" do
    values = %w["Cups"]
    values.each do |value|
      valid_value = Unit.new(@attr.merge(:value => value))
      valid_value.should be_valid
    end
  end

end
