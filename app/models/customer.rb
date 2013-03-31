class Customer < ActiveRecord::Base
	
	has_one :address, :as => :addressable
	accepts_nested_attributes_for :address

  attr_accessible :email, :name, :phone
  attr_accessible :line1, :line2, :city, :post_code, :state
  validates :name, :presence =>true
end