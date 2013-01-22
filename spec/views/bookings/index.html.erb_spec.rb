require 'spec_helper'

describe "bookings/index" do
  before(:each) do
    assign(:bookings, [
      stub_model(Booking,
        :name => "Name",
        :address => "Address",
        :mobile => "Mobile",
        :date => "Date"
      ),
      stub_model(Booking,
        :name => "Name",
        :address => "Address",
        :mobile => "Mobile",
        :date => "Date"
      )
    ])
  end

  it "renders a list of bookings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
  end
end
