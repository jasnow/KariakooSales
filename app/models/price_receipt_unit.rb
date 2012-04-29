class PriceReceiptUnit < ActiveRecord::Base
  attr_accessible :value

  validates :value, :presence => true
end
