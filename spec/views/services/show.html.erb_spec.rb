require 'spec_helper'

describe "services/show" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :type => "Type",
      :frequency => "Frequency",
      :due_date => "Due Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    rendered.should match(/Frequency/)
    rendered.should match(/Due Date/)
  end
end
