require 'spec_helper'



describe Reservation do
  before do 
    @reservation = Reservation.new
  end


  it "must have a checkin" do
   @reservation.should have("2013-04-16").error_on(:checkin)
  end

  it "must have a checkout" do
    @reservation.should have("2013-04-31").error_on(:checkout)
  end

  it "must have guests" do
    @reservation.should have(1).error_on(:guests)
  end

  it "must have a pickup_required" do
    @reservation.should have("true").error_on(:collection_required)
  end  
end
