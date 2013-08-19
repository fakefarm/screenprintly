class Session < ActiveRecord::Base
  attr_accessible :session_id, :quote_id, :garment_id, :printer_id, :garment_price
end
