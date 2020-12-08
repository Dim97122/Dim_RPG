require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :type => "",
      :attack_points => 1,
      :defense_points => 1
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[name]"

      assert_select "input[name=?]", "item[type]"

      assert_select "input[name=?]", "item[attack_points]"

      assert_select "input[name=?]", "item[defense_points]"
    end
  end
end
