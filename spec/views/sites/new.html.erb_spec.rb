require 'spec_helper'

describe "sites/new" do
  before(:each) do
    assign(:site, stub_model(Site,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new site form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sites_path, :method => "post" do
      assert_select "input#site_name", :name => "site[name]"
    end
  end
end
