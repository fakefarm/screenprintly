require 'spec_helper'

describe PrintPrice do
  it 'has a pallet size' do
    price = PrintPrice.create(pallet_type: 'standard')
    expect(price.pallet_type).not_to be_nil
  end

  it 'has an ink type' do
    price = PrintPrice.create(ink_type: 'plastisol')
    expect(price.ink_type).not_to be_nil
  end

  it 'has prices for a base and 8 colors' do
    price = PrintPrice.create(base_color: 5, one_color: 23, two_color: 24, three_color: 34, four_color: 40, five_color: 50, six_color: 60, seven_color: 72, eight_color: 75)

      expect(price.base_color).to be_true
      expect(price.one_color).to be_true
      expect(price.two_color).to be_true
      expect(price.three_color).to be_true
      expect(price.four_color).to be_true
      expect(price.five_color).to be_true
      expect(price.six_color).to be_true
      expect(price.seven_color).to be_true
      expect(price.eight_color).to be_true
  end

  it 'belongs to a printer' do
    printer = create(:printer)
    price = create(:print_price, printer_id: printer.id)
    expect(price.printer.id).to be_kind_of(Integer)
  end
end
