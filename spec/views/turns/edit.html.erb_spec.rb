require 'rails_helper'

RSpec.describe "turns/edit", type: :view do
  before(:each) do
    @turn = assign(:turn, Turn.create!(
      :home_character_life_points => 1,
      :away_character_life_points => 1,
      :plays => 1
    ))
  end

  it "renders the edit turn form" do
    render

    assert_select "form[action=?][method=?]", turn_path(@turn), "post" do

      assert_select "input[name=?]", "turn[home_character_life_points]"

      assert_select "input[name=?]", "turn[away_character_life_points]"

      assert_select "input[name=?]", "turn[plays]"
    end
  end
end
