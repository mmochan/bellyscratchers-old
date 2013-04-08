require 'spec_helper'


describe "reservations/show" do
  before(:each) do
    @reservation = assign(:reservation, stub_model(Reservation,
      :checkin => "2013-04-23",
      :checkout => "2013-04-30",
      :guests => ["Harley", "Eric"],
      :collection_required => 'Yes',

    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/2013-04-23/)
    rendered.should match(/2013-04-30/)
    rendered.should match(/0411815602/)
    rendered.should match(/Yes/)

  end
end
