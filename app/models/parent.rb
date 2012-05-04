class Parent < ActiveRecord::Base
	attr_accessible :name
	has_many :child
end