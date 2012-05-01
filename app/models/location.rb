class Location < ActiveRecord::Base
  attr_accessible :district, :name, :region, :town, :ward

  validates :name, :presence => true, :length => { :in => 1..50 }
  validates :region, :presence => true, :length => { :in => 1..50 }
  validates :district, :presence => true, :length => { :in => 1..50 }
  validates :town, :presence => true, :length => { :in => 1..50 }
  validates :ward, :presence => true, :length => { :in => 1..50 }
end
