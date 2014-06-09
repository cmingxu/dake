require 'spec_helper'

describe "passenger_records/edit" do
  before(:each) do
    @passenger_record = assign(:passenger_record, stub_model(PassengerRecord,
      :route_id => 1
    ))
  end

  it "renders the edit passenger_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", passenger_record_path(@passenger_record), "post" do
      assert_select "input#passenger_record_route_id[name=?]", "passenger_record[route_id]"
    end
  end
end
