# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :name => "MyString",
      :xinghao => "MyString",
      :amount => 1
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "input#item_xinghao[name=?]", "item[xinghao]"
      assert_select "input#item_amount[name=?]", "item[amount]"
    end
  end
end
