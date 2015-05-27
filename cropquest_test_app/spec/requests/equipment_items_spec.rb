require 'rails_helper'

RSpec.describe "EquipmentItems", type: :request do
  describe "GET /equipment_items" do
    it "works! (now write some real specs)" do
      get equipment_items_path
      expect(response).to have_http_status(200)
    end
  end
end
