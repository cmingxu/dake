# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "reminds/index" do
  before(:each) do
    assign(:reminds, [
      stub_model(Remind,
        :name => "Name",
        :repeating => 1,
        :remind => 2
      ),
      stub_model(Remind,
        :name => "Name",
        :repeating => 1,
        :remind => 2
      )
    ])
  end

  it "renders a list of reminds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
