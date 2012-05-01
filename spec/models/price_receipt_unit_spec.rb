require 'spec_helper'

describe PriceReceiptUnit do

  before(:each) do
    @attr = { 
      :value => "dollars"
    }
  end

  it "should create a new instance given valid attributes" do
    PriceReceiptUnit.create(@attr)
  end

  it "should require a value" do
    no_pru_value = PriceReceiptUnit.new(@attr.merge(:value => ""))
    no_pru_value.should_not be_valid
  end

  it "should reject too long values" do
    #HEH: Define "TOO LONG" 
    long_value = "a" * 51
    long_pru_value = PriceReceiptUnit.new(@attr.merge(:value => long_value))
    long_pru_value.should_not be_valid
  end

  it "should reject too short values" do
    valid_value = PriceReceiptUnit.new(@attr.merge(:value => ""))
    valid_value.should_not be_valid
  end

  it "should accept valid values" do
    values = %w["dollars"]
    values.each do |value|
      valid_value = PriceReceiptUnit.new(@attr.merge(:value => value))
      valid_value.should be_valid
    end
  end

end
