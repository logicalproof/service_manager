require 'spec_helper'

describe "buildings/show" do
  before(:each) do
    @building = assign(:building, stub_model(Building,
      :name => "Name",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
  end
end
