require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :name => "Name",
        :type => "Type",
        :attack_points => 2,
        :defense_points => 3
      ),
      Item.create!(
        :name => "Name",
        :type => "Type",
        :attack_points => 2,
        :defense_points => 3
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
