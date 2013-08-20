class Confirmation < ActiveRecord::Base
  attr_accessible :color, :garment, :printer_id, :city, :total_invoice, :piece_price, :email, :name
end


