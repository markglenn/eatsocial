require 'spec_helper'

describe "events/index.html.erb" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :location => "Location",
        :image_location => "Image Location"
      ),
      stub_model(Event,
        :location => "Location",
        :image_location => "Image Location"
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Location".to_s, :count => 2
  end
end
