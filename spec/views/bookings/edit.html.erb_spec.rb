require 'spec_helper'

describe "bookings/edit" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :name => "MyString",
      :address => "MyText",
      :contact_number => "MyString",
      :email => "MyString",
      :dog_count => "MyString"
    ))
  end

  it "renders the edit booking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bookings_path(@booking), :method => "post" do
      assert_select "input#booking_name", :name => "booking[name]"
      assert_select "textarea#booking_address", :name => "booking[address]"
      assert_select "input#booking_contact_number", :name => "booking[contact_number]"
      assert_select "input#booking_email", :name => "booking[email]"
      assert_select "input#booking_dog_count", :name => "booking[dog_count]"
    end
  end
end
