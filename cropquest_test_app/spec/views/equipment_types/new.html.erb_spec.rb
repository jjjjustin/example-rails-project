require 'rails_helper'

RSpec.describe "equipment_types/new", type: :view do
  before(:each) do
    assign(:equipment_type, EquipmentType.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new equipment_type form" do
    render

    assert_select "form[action=?][method=?]", equipment_types_path, "post" do

      assert_select "input#equipment_type_name[name=?]", "equipment_type[name]"

      assert_select "textarea#equipment_type_description[name=?]", "equipment_type[description]"
    end
  end
end
