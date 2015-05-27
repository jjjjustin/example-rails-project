class EquipmentType < ActiveRecord::Base
  has_many :equipment_items
end
