require 'rails_helper'

RSpec.describe "equipment_items/show", type: :view do
  before(:each) do
    @equipment_item = assign(:equipment_item, EquipmentItem.create!(
      :name => "Name",
      :serial => "Serial",
      :comments => "MyText",
      :equipment_type_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Serial/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
