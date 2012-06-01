require 'spec_helper'

describe "buildings/edit" do
  before(:each) do
    @building = assign(:building, stub_model(Building,
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit building form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => buildings_path(@building), :method => "post" do
      assert_select "input#building_name", :name => "building[name]"
      assert_select "input#building_address", :name => "building[address]"
    end
  end
end
