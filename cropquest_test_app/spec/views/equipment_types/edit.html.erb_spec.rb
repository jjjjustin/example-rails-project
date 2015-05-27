require 'rails_helper'

RSpec.describe "equipment_types/edit", type: :view do
  before(:each) do
    @equipment_type = assign(:equipment_type, EquipmentType.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit equipment_type form" do
    render

    assert_select "form[action=?][method=?]", equipment_type_path(@equipment_type), "post" do

      assert_select "input#equipment_type_name[name=?]", "equipment_type[name]"

      assert_select "textarea#equipment_type_description[name=?]", "equipment_type[description]"
    end
  end
end
