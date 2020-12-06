require 'rails_helper'

RSpec.describe "turns/index", type: :view do
  before(:each) do
    assign(:turns, [
      Turn.create!(
        :home_character_life_points => 2,
        :away_character_life_points => 3,
        :plays => 4
      ),
      Turn.create!(
        :home_character_life_points => 2,
        :away_character_life_points => 3,
        :plays => 4
      )
    ])
  end

  it "renders a list of turns" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
