class Booking < ActiveRecord::Base
	belongs_to :customer
  attr_accessible :dropoff_date,  :pickup_date, :visitors, :pickup_required
  
  validates :visitors, :presence => true
  validates :dropoff_date, :presence => true
  validates :pickup_date, :presence => true

  validate :dropoff_is_before_pickup, :back_in_time, :one_day_notice, :too_long
  validate :dogs

  def dropoff_is_before_pickup
  	errors.add(:dropoff_date, "Can't drop em off before we pick em up") unless self.dropoff_date < self.pickup_date	
  end

  def back_in_time
  	errors.add(:dropoff_date, "I can't travel back in time - my time machine is broken") unless self.dropoff_date >= Date.today
  end

  def one_day_notice
  	errors.add(:dropoff_date, "That's a bit short notice for me") unless self.dropoff_date > Date.today + 1
  end

  def too_long
  	errors.add(:pickup_date, "That's a very long stay, are you sure about those dates?") unless (self.pickup_date - self.dropoff_date).to_i < 20
  end

  def dogs
  	errors.add(:visitors, "Surely one of them is coming?") if self.visitors[0].empty?
  	
  end
end
