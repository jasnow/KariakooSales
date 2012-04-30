class Commodity < ActiveRecord::Base
  attr_accessible :value

  #validates :value, :presence => true
end
