class Sale < ActiveRecord::Base
  attr_accessible :commodity, :farmer_name, :location, :market_type, :price_receiptUnit, :price_received, :quality, :sale_date, :unit, :volume

  #validates :commodity, :presence => true
  #validates :farmer_name, :presence => true
  #validates :location, :presence => true
  #validates :market_type, :presence => true
  #validates :price_receiptUnit, :presence => true
  #validates :price_received, :presence => true
  #validates :quality, :presence => true
  #validates :sale_date, :presence => true
  #validates :unit, :presence => true
  #validates :volume, :presence => true
end
