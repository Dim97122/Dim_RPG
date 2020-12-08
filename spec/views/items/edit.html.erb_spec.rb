require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :type => "",
      :attack_points => 1,
      :defense_points => 1
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[type]"

      assert_select "input[name=?]", "item[attack_points]"

      assert_select "input[name=?]", "item[defense_points]"
    end
  end
end
