class Location < ActiveRecord::Base
  attr_accessible :district, :name, :region, :town, :ward

  #validates :name, :presence => true
  #validates :region, :presence => true
  #validates :town, :presence => true
  #validates :ward, :presence => true
end
