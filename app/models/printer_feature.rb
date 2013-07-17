class PrinterFeature < ActiveRecord::Base
  attr_accessible :free_shipping, :digital_proof, :hotline,
                  :art_team, :sample, :drop_ship, :printer_id

  belongs_to :printer
end
