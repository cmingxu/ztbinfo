require 'spec_helper'

describe "infos/new" do
  before(:each) do
    assign(:info, stub_model(Info,
      :title => "MyString",
      :url => "MyString",
      :content => "MyText",
      :contact => "MyString",
      :original_site => "MyString"
    ).as_new_record)
  end

  it "renders new info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => infos_path, :method => "post" do
      assert_select "input#info_title", :name => "info[title]"
      assert_select "input#info_url", :name => "info[url]"
      assert_select "textarea#info_content", :name => "info[content]"
      assert_select "input#info_contact", :name => "info[contact]"
      assert_select "input#info_original_site", :name => "info[original_site]"
    end
  end
end
