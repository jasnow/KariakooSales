require 'spec_helper'

describe Quality do

  before(:each) do
    @attr = { 
      :value => "Medium"
    }
  end

  it "should create a new instance given valid attributes" do
    Quality.create(@attr)
  end

  it "should require a value" do
    no_quality_value = Quality.new(@attr.merge(:value => ""))
    no_quality_value.should_not be_valid
  end

  it "should reject too long values" do
    long_value = "a" * 51
    long_quality_value = Quality.new(@attr.merge(:value => long_value))
    long_quality_value.should_not be_valid
  end

  it "should reject too short values" do
    valid_value = Quality.new(@attr.merge(:value => ""))
    valid_value.should_not be_valid
  end

  it "should accept valid values" do
    values = %w["Medium"]
    values.each do |value|
      valid_value = Quality.new(@attr.merge(:value => value))
      valid_value.should be_valid
    end
  end

end
