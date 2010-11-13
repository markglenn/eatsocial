require 'spec_helper'

describe "subscriptions/edit.html.erb" do
  before(:each) do
    @subscription = assign(:subscription, stub_model(Subscription,
      :new_record? => false,
      :person_id => 1,
      :event_id => 1
    ))
  end

  it "renders the edit subscription form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => subscription_path(@subscription), :method => "post" do
      assert_select "input#subscription_person_id", :name => "subscription[person_id]"
      assert_select "input#subscription_event_id", :name => "subscription[event_id]"
    end
  end
end
