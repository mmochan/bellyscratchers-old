require 'spec_helper'

describe "reservations/index" do
  before(:each) do
    assign(:reservations, [
      stub_model(Reservation,
        :checkin => "Name",
        :checkout => "MyText",
        :guests => ["Harley", "Eric"],
        :collection_required => "Y",
      
      ),
      stub_model(Reservation,
        :checkin => "Name",
        :checkout => "MyText",
        :guests => ["Harley", "Eric"],
        :collection_required => "Y",
      )
    ])
  end

  it "renders a list of reservations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Dog Count".to_s, :count => 2
  end
end
