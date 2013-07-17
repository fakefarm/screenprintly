require 'spec_helper'

describe PrinterFeature do
  it 'exists' do
    create :city
    create :printer
    feature = PrinterFeature.new

    feature.free_shipping = true
    feature.digital_proof = true
    feature.hotline = true
    feature.art_team = true
    feature.sample = true
    feature.drop_ship = true
    feature.printer_id = true
    expect(feature).to be_valid
  end
end


