class Booking < ActiveRecord::Base
	belongs_to :customer
  attr_accessible :dropoff_date,  :pickup_date, :visitors, :pickup_required
  
  validates :visitors, :presence => true
  validates :dropoff_date, :presence => true
  validates :pickup_date, :presence => true

  validate :dropoff_is_before_pickup, :at_least_one_day_notice
  validate :too_long

  def dropoff_is_before_pickup
  	errors.add(:dropoff_date, "Can't drop em off before we pick em up") unless self.dropoff_date < self.pickup_date	
  end

  def at_least_one_day_notice
  	errors.add(:dropoff_date, "That's a bit short notice for me") unless self.dropoff_date > Date.today + 1
  end

  def too_long
  	errors.add(:pickup_date, "That's a very long stay, are you sure about those dates?") unless (self.pickup_date - self.dropoff_date).to_i < 20
  end
end
