require 'spec_helper'

describe "buildings/new" do
  before(:each) do
    assign(:building, stub_model(Building,
      :name => "MyString",
      :address => "MyString"
    ).as_new_record)
  end

  it "renders new building form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => buildings_path, :method => "post" do
      assert_select "input#building_name", :name => "building[name]"
      assert_select "input#building_address", :name => "building[address]"
    end
  end
end
