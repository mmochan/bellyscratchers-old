require 'spec_helper'

describe Booking do
  before do 
    @booking = Booking.new
  end


  it "must have a dropoff_date" do
   @booking.should have("2013-03-31").error_on(:dropoff_date)
  end

  it "must have a pickup_date" do
    @booking.should have("2013-03-31").error_on(:pickup_date)
  end

  it "must have a dog_count" do
    @booking.should have(1).error_on(:dog_count)
  end

  it "must have a pickup_required" do
    @booking.should have("true").error_on(:pickup_required)
  end  
end
