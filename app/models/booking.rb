class Booking < ActiveRecord::Base

  attr_accessible :name, :address, :phone, :dog_count, :email, :dropoff_date, :name, :pickup_date, :pickup_required

  validates :name, :presence =>true
  validates :address, :presence =>true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
  validates :dog_count, :numericality => true


end
