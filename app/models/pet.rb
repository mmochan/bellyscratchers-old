class Pet < ActiveRecord::Base
	belongs_to :customer
  attr_accessible :name, :description, :sex, :dietary_requirements, :age, :special_notes
end
