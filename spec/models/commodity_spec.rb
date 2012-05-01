require 'spec_helper'

describe Commodity do

  before(:each) do
    @attr = { 
      :value => "Wheat"
    }
  end

  it "should create a new instance given valid attributes" do
    Commodity.create(@attr)
  end

  it "should require a value" do
    no_commodity_value = Commodity.new(@attr.merge(:value => ""))
    no_commodity_value.should_not be_valid
  end

  it "should reject too long values" do
    #HEH: Define "TOO LONG" 
    long_value = "a" * 51
    long_commodity_value = Commodity.new(@attr.merge(:value => long_value))
    long_commodity_value.should_not be_valid
  end

  it "should reject too short values" do
    valid_value = Commodity.new(@attr.merge(:value => ""))
    valid_value.should_not be_valid
  end

  it "should accept valid values" do
    values = %w["Wheat"]
    values.each do |value|
      valid_value = Commodity.new(@attr.merge(:value => value))
      valid_value.should be_valid
    end
  end

end
