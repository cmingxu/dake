require 'spec_helper'

describe "passenger_records/new" do
  before(:each) do
    assign(:passenger_record, stub_model(PassengerRecord,
      :route_id => 1
    ).as_new_record)
  end

  it "renders new passenger_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", passenger_records_path, "post" do
      assert_select "input#passenger_record_route_id[name=?]", "passenger_record[route_id]"
    end
  end
end
