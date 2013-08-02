class GarmentSelector < ActiveRecord::Base
  attr_accessible :short_sleeve_tshirt, :printer_id
  belongs_to :printer
end
