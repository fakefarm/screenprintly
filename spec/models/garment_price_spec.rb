require 'spec_helper'

describe GarmentPrice do
  it 'is valid with all components' do
    printer = create :printer
    shirt = create :garment_price
    shirt.printer_id = printer
    expect(shirt).to be_valid
  end

  it 'is invalid without price' do
    expect(build(:garment_price, price: nil)).to be_invalid
  end
end
