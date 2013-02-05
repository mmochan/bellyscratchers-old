require 'spec_helper'

describe Booking do
  before do 
    @booking = Booking.new
  end

  it "must have a name" do
   @booking.should have(1).error_on(:name)
  end

  it "must have an address" do
   @booking.should have(1).error_on(:address)
  end

  it "must have a start_date" do
   @booking.should have(1).error_on(:start_date)
  end

  it "must have a end_date" do
    @booking.should have(1).error_on(:end_date)
  end

  it "must have a contact_number" do
    @booking.should have(1).error_on(:contact_number)
  end

  it "must have a dog_count" do
    @booking.should have(1).error_on(:dog_count)
  end
end
