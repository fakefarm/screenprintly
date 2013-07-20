require 'spec_helper'

describe FinishingService do
  it 'exists' do
    create :city
    create :printer
    finishing = FinishingService.new

    finishing.printed_labels = true
    finishing.woven_labels = true
    finishing.folding_bagging = true
    finishing.hang_tags = true
    finishing.fulfillment = true
    finishing.printer_id = true
    expect(finishing).to be_valid
  end
end


