class Address < ActiveRecord::Base
	belongs_to :addressable, :polymorphic => true
  attr_accessible :line1, :line2, :city, :post_code, :state
end
