class Pet < ActiveRecord::Base
	belongs_to :customer
  attr_accessible :age, :description, :dietry_requirements, :name, :special_notes
end
