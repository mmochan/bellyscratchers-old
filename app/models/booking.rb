class Booking < ActiveRecord::Base
	belongs_to :customer
  attr_accessible :dropoff_date,  :pickup_date, :visitors, :pickup_required
  #validates :dog_count, :presence => true
  validates :dropoff_date, :presence => true
  validates :pickup_date, :presence => true

end
