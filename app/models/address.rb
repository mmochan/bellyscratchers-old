class Address < ActiveRecord::Base
	belongs_to :customer
  attr_accessible :line1, :line2, :suburb, :state, :post_code
end
