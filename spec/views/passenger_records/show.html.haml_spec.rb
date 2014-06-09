require 'spec_helper'

describe "passenger_records/show" do
  before(:each) do
    @passenger_record = assign(:passenger_record, stub_model(PassengerRecord,
      :route_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
