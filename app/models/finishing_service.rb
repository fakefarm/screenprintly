class FinishingService < ActiveRecord::Base
  attr_accessible :printed_labels, :woven_labels, :folding_bagging, :hang_tags, :fulfillment, :printer_id
  belongs_to :printer
end

