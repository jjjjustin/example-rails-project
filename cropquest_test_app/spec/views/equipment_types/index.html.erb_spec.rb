require 'rails_helper'

RSpec.describe "equipment_types/index", type: :view do
  before(:each) do
    assign(:equipment_types, [
      EquipmentType.create!(
        :name => "Name",
        :description => "MyText"
      ),
      EquipmentType.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of equipment_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
