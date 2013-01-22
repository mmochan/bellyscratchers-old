require 'spec_helper'

describe "bookings/edit" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :name => "MyString",
      :address => "MyString",
      :mobile => "MyString",
      :date => "MyString"
    ))
  end

  it "renders the edit booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookings_path(@booking), :method => "post" do
      assert_select "input#booking_name", :name => "booking[name]"
      assert_select "input#booking_address", :name => "booking[address]"
      assert_select "input#booking_mobile", :name => "booking[mobile]"
      assert_select "input#booking_date", :name => "booking[date]"
    end
  end
end
