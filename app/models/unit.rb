class Unit < ActiveRecord::Base
  attr_accessible :value
  belongs_to :sale

  validates :value, :presence => true, :length => { :in => 1..50 }
end
