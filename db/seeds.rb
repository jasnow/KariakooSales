# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#---

# encoding: utf-8

Commodity.delete_all
Commodity.create(:value => "Corn Oil")
Commodity.create(:value => "Wheat")

Location.delete_all
Location.create(:name => "Decatur",
  :town => "Decatur",
  :ward => "DeKalb",
  :district => "Georgia",
  :region => "Southeast")
Location.create(:name => "Roswell",
  :town => "Roswell",
  :ward => "Fulton",
  :district => "Georgia",
  :region => "Southeast")

Quality.delete_all
Quality.create(:value => "High")
Quality.create(:value => "Medium")
Quality.create(:value => "Low")

Unit.delete_all
Unit.create(:value => "Bushels")
Unit.create(:value => "Kilos")
Unit.create(:value => "Cups")
Unit.create(:value => "Gallons")
Unit.create(:value => "Liters")
Unit.create(:value => "Grams")

MarketType.delete_all
MarketType.create(:value => "FarmGate")
MarketType.create(:value => "Delivered")
MarketType.create(:value => "Wholesale")
MarketType.create(:value => "Retail")

PriceReceiptUnit.delete_all
PriceReceiptUnit.create(:value => "dollars")
PriceReceiptUnit.create(:value => "cents")

