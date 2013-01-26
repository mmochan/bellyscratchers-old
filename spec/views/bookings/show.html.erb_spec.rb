require 'spec_helper'

describe "bookings/show" do
  before(:each) do
    @booking = assign(:booking, stub_model(Booking,
      :name => "Name",
      :address => "MyText",
      :contact_number => "Contact Number",
      :email => "Email",
      :dog_count => "Dog Count"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Contact Number/)
    rendered.should match(/Email/)
    rendered.should match(/Dog Count/)
  end
end
