require 'rails_helper'

RSpec.describe "turns/new", type: :view do
  before(:each) do
    assign(:turn, Turn.new(
      :home_character_life_points => 1,
      :away_character_life_points => 1,
      :plays => 1
    ))
  end

  it "renders new turn form" do
    render

    assert_select "form[action=?][method=?]", turns_path, "post" do

      assert_select "input[name=?]", "turn[home_character_life_points]"

      assert_select "input[name=?]", "turn[away_character_life_points]"

      assert_select "input[name=?]", "turn[plays]"
    end
  end
end
