require 'rails_helper'

RSpec.describe "equipment_items/index", type: :view do
  before(:each) do
    assign(:equipment_items, [
      EquipmentItem.create!(
        :name => "Name",
        :serial => "Serial",
        :comments => "MyText",
        :equipment_type_id => 1,
        :user_id => 2
      ),
      EquipmentItem.create!(
        :name => "Name",
        :serial => "Serial",
        :comments => "MyText",
        :equipment_type_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of equipment_items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Serial".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
