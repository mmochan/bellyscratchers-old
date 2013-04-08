require 'spec_helper'

describe "bookings/index" do
  before(:each) do
    assign(:bookings, [
      stub_model(Booking,
        :name => "Name",
        :address => "MyText",
        :contact_number => "Contact Number",
        :email => "Email",
        :dog_count => "Dog Count"
      ),
      stub_model(Booking,
        :name => "Name",
        :address => "MyText",
        :contact_number => "Contact Number",
        :email => "Email",
        :dog_count => "Dog Count"
      )
    ])
  end

  it "renders a list of bookings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Dog Count".to_s, :count => 2
  end
end
