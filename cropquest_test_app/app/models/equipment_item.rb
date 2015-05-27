class EquipmentItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :equipment_type
end
