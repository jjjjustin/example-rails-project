require 'rails_helper'

RSpec.describe "equipment_items/edit", type: :view do
  before(:each) do
    @equipment_item = assign(:equipment_item, EquipmentItem.create!(
      :name => "MyString",
      :serial => "MyString",
      :comments => "MyText",
      :equipment_type_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit equipment_item form" do
    render

    assert_select "form[action=?][method=?]", equipment_item_path(@equipment_item), "post" do

      assert_select "input#equipment_item_name[name=?]", "equipment_item[name]"

      assert_select "input#equipment_item_serial[name=?]", "equipment_item[serial]"

      assert_select "textarea#equipment_item_comments[name=?]", "equipment_item[comments]"

      assert_select "input#equipment_item_equipment_type_id[name=?]", "equipment_item[equipment_type_id]"

      assert_select "input#equipment_item_user_id[name=?]", "equipment_item[user_id]"
    end
  end
end
