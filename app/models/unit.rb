class Unit < ActiveRecord::Base
  attr_accessible :value

  validates :value, :presence => true, :length => { :in => 1..50 }
end
