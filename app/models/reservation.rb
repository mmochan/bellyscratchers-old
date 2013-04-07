class Reservation < ActiveRecord::Base
	belongs_to :customer
  attr_accessible :checkin,  :checkout, :guests, :collection_required, :customer_id
  
  validates :guests, :presence => true
  validates :checkin, :presence => true
  validates :checkout, :presence => true

  validate :dropoff_is_before_pickup, :back_in_time, :one_day_notice, :too_long
  validate :dogs

  def dropoff_is_before_pickup
  	errors.add(:checkin, "Can't drop em off before we pick em up") unless self.checkin < self.checkout	
  end

  def back_in_time
  	errors.add(:checkin, "I can't travel back in time - my time machine is broken") unless self.checkin >= Date.today
  end

  def one_day_notice
  	errors.add(:checkin, "That's a bit short notice for me") unless self.checkin > Date.today + 1
  end

  def too_long
  	errors.add(:checkout, "That's a very long stay, are you sure about those dates?") unless (self.checkout - self.checkin).to_i < 20
  end

  def dogs
  	errors.add(:guests, "Surely one of them is coming?") if self.guests[0].empty?
  end

end
