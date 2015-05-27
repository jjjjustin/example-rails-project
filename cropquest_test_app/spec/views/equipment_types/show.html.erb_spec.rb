require 'rails_helper'

RSpec.describe "equipment_types/show", type: :view do
  before(:each) do
    @equipment_type = assign(:equipment_type, EquipmentType.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
