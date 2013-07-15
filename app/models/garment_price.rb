class GarmentPrice < ActiveRecord::Base
  attr_accessible :fabric, :cut, :quality, :colors, :inventory, :brand, :style_number, :price, :printer_id

  validates :price, presence: true

  belongs_to :printer
end


