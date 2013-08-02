require 'spec_helper'

describe GarmentSelector do
  it 'provides a list of garment options to choose from' do
    printer = create(:printer)
    budget = create(:garment_price, style_number: 1990, printer_id: printer)
    brand = create(:garment_price, style_number: 2000, printer_id: printer)
    boutique = create(:garment_price, printer_id: printer)

    selection = GarmentSelector.create(short_sleeve_tshirt: budget, printer_id: printer)
    expect(selection).to be_valid
  end
end
