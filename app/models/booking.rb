class Booking < ActiveRecord::Base
  attr_accessible :address, :contact_number, :dog_count, :email, :end_date, :name, :start_date

 validates :name, :presence =>true
 validates :address, :presence =>true
 validates :start_date, :presence =>true
 validates :end_date, :presence =>true
 validates :contact_number, :numericality => true
 validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }
 validates :dog_count, :numericality => true
end
