class Child < ActiveRecord::Base
	attr_accessible :name
	belongs_to :parent
end