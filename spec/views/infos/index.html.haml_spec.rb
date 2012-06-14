require 'spec_helper'

describe "infos/index" do
  before(:each) do
    assign(:infos, [
      stub_model(Info,
        :title => "Title",
        :url => "Url",
        :content => "MyText",
        :contact => "Contact",
        :original_site => "Original Site"
      ),
      stub_model(Info,
        :title => "Title",
        :url => "Url",
        :content => "MyText",
        :contact => "Contact",
        :original_site => "Original Site"
      )
    ])
  end

  it "renders a list of infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Original Site".to_s, :count => 2
  end
end
