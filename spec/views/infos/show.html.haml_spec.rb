require 'spec_helper'

describe "infos/show" do
  before(:each) do
    @info = assign(:info, stub_model(Info,
      :title => "Title",
      :url => "Url",
      :content => "MyText",
      :contact => "Contact",
      :original_site => "Original Site"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Contact/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Original Site/)
  end
end
