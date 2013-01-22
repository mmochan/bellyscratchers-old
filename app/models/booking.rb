class Booking < ActiveRecord::Base
  attr_accessible :address, :date, :mobile, :name
end
