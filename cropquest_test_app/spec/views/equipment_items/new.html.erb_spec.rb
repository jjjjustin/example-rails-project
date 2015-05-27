require 'rails_helper'

RSpec.describe "equipment_items/new", type: :view do
  before(:each) do
    assign(:equipment_item, EquipmentItem.new(
      :name => "MyString",
      :serial => "MyString",
      :comments => "MyText",
      :equipment_type_id => 1,
      :user_id => 1
    ))
  end

  it "renders new equipment_item form" do
    render

    assert_select "form[action=?][method=?]", equipment_items_path, "post" do

      assert_select "input#equipment_item_name[name=?]", "equipment_item[name]"

      assert_select "input#equipment_item_serial[name=?]", "equipment_item[serial]"

      assert_select "textarea#equipment_item_comments[name=?]", "equipment_item[comments]"

      assert_select "input#equipment_item_equipment_type_id[name=?]", "equipment_item[equipment_type_id]"

      assert_select "input#equipment_item_user_id[name=?]", "equipment_item[user_id]"
    end
  end
end
