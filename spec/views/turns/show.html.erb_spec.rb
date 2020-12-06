require 'rails_helper'

RSpec.describe "turns/show", type: :view do
  before(:each) do
    @turn = assign(:turn, Turn.create!(
      :home_character_life_points => 2,
      :away_character_life_points => 3,
      :plays => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
