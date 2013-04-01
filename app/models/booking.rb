class Booking < ActiveRecord::Base
	belongs_to :customer
  attr_accessible :dropoff_date,  :pickup_date, :dog_count, :pickup_required
  validates :dog_count, :numericality => true
end
