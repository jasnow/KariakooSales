require 'spec_helper'

describe Location do

  before(:each) do
    @attr = { 
      :name => "Roswell",
      :town => "Roswell",
      :ward => "Fulton",         
      :district => "Georgia",
      :region => "Southeast"
    }
  end

  it "should create a new instance given valid attributes" do
    Location.create(@attr)
  end

  it "should require a name value" do
    no_location_name = Location.new(@attr.merge(
      :name => "",
      :town => "Roswell",
      :ward => "Fulton",         
      :district => "Georgia",
      :region => "Southeast"
    ))
    no_location_name.should_not be_valid
  end
  it "should require a town value" do
    no_location_town = Location.new(@attr.merge(
      :name => "Roswell",
      :town => "",
      :ward => "Fulton",         
      :district => "Georgia",
      :region => "Southeast"
    ))
    no_location_town.should_not be_valid
  end
  it "should require a ward value" do
    no_location_ward = Location.new(@attr.merge(
      :name => "Roswell",
      :town => "Roswell",
      :ward => "",         
      :district => "Georgia",
      :region => "Southeast"
    ))
    no_location_ward.should_not be_valid
  end
  it "should require a district value" do
    no_location_district = Location.new(@attr.merge(
      :name => "Roswell",
      :town => "Roswell",
      :ward => "Fulton",         
      :district => "",
      :region => "Southeast"
    ))
    no_location_district.should_not be_valid
  end
  it "should require a region value" do
    no_location_region = Location.new(@attr.merge(
      :name => "Roswell",
      :town => "Roswell",
      :ward => "Fulton",         
      :district => "Georgia",
      :region => ""
    ))
    no_location_region.should_not be_valid
  end

  it "should reject too long name" do
    #HEH: Define "TOO LONG" 
    long_name = "a" * 51
    long_location = Location.new(@attr.merge(
      :name => long_name,
      :town => "Roswell",
      :ward => "Fulton",         
      :district => "Georgia",
      :region => "Southeast"
    ))
    long_location.should_not be_valid
  end

  it "should reject too short name" do
    invalid_name = Location.new(@attr.merge(
      :name => "",
      :town => "Roswell",
      :ward => "Fulton",         
      :district => "Georgia",
      :region => "Southeast"
    ))
    invalid_name.should_not be_valid
  end
  it "should reject too short town" do
    invalid_town = Location.new(@attr.merge(
      :name => "Roswell",
      :town => "",
      :ward => "Fulton",         
      :district => "Georgia",
      :region => "Southeast"
    ))
    invalid_town.should_not be_valid
  end
  it "should reject too short ward" do
    invalid_ward = Location.new(@attr.merge(
      :name => "Roswell",
      :town => "Roswell",
      :ward => "",
      :district => "Georgia",
      :region => "Southeast"
    ))
    invalid_ward.should_not be_valid
  end
  it "should reject too short district" do
    invalid_district = Location.new(@attr.merge(
      :name => "Roswell",
      :town => "Roswell",
      :ward => "Fulton",         
      :district => "",
      :region => "Southeast"
    ))
    invalid_district.should_not be_valid
  end
  it "should reject too short region" do
    invalid_region = Location.new(@attr.merge(
      :name => "Roswell",
      :town => "Roswell",
      :ward => "Fulton",         
      :district => "Georgia",
      :region => ""
    ))
    invalid_region.should_not be_valid
  end

  it "should accept valid name values" do
    names = %w["Roswell"]
    names.each do |name|
      valid_name = Location.new(@attr.merge(
        :name => name,
        :town => "Roswell",
        :ward => "Fulton",         
        :district => "Georgia",
        :region => "Southeast"
      ))
      valid_name.should be_valid
    end
  end
  it "should accept valid town values" do
    towns = %w["Roswell"]
    towns.each do |town|
      valid_town = Location.new(@attr.merge(
        :name => "Roswell",
        :town => town,
        :ward => "Fulton",         
        :district => "Georgia",
        :region => "Southeast"
      ))
      valid_town.should be_valid
    end
  end
  it "should accept valid ward values" do
    wards = %w["Fulton"]
    wards.each do |name|
      valid_ward = Location.new(@attr.merge(
        :name => "Roswell",
        :town => "Roswell",
        :ward => wards,
        :district => "Georgia",
        :region => "Southeast"
      ))
      valid_ward.should be_valid
    end
  end
  it "should accept valid district values" do
    districts = %w["Georgia"]
    districts.each do |name|
      valid_district = Location.new(@attr.merge(
        :name => "Roswell",
        :town => "Roswell",
        :ward => "Fulton",         
        :district => districts,
        :region => "Southeast"
      ))
      valid_district.should be_valid
    end
  end
  it "should accept valid region values" do
    regions = %w["Roswell"]
    regions.each do |name|
      valid_region = Location.new(@attr.merge(
        :name => "Roswell",
        :town => "Roswell",
        :ward => "Fulton",         
        :district => "Georgia",
        :region => regions
      ))
      valid_region.should be_valid
    end
  end

end
