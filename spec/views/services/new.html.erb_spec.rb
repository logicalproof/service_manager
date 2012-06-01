require 'spec_helper'

describe "services/new" do
  before(:each) do
    assign(:service, stub_model(Service,
      :type => "",
      :frequency => "MyString",
      :due_date => "MyString"
    ).as_new_record)
  end

  it "renders new service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => services_path, :method => "post" do
      assert_select "input#service_type", :name => "service[type]"
      assert_select "input#service_frequency", :name => "service[frequency]"
      assert_select "input#service_due_date", :name => "service[due_date]"
    end
  end
end
