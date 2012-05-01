require 'spec_helper'

describe MarketType do

  before(:each) do
    @attr = { 
      :value => "Wholesale"
    }
  end

  it "should create a new instance given valid attributes" do
    MarketType.create(@attr)
  end

  it "should require a value" do
    no_markettype_value = MarketType.new(@attr.merge(:value => ""))
    no_markettype_value.should_not be_valid
  end

  it "should reject too long values" do
    #HEH: Define "TOO LONG" 
    long_value = "a" * 51
    long_markettype_value = MarketType.new(@attr.merge(:value => long_value))
    long_markettype_value.should_not be_valid
  end

  it "should reject too short values" do
    valid_value = MarketType.new(@attr.merge(:value => ""))
    valid_value.should_not be_valid
  end

  it "should accept valid values" do
    values = %w["Wholesale"]
    values.each do |value|
      valid_value = MarketType.new(@attr.merge(:value => value))
      valid_value.should be_valid
    end
  end

end
