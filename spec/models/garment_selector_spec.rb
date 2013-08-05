require 'spec_helper'

describe GarmentSelector do

  before :each do
    @printer = create(:printer)
    @budget = create(:garment_price, style_number: 1990, printer_id: @printer) # _refactor - Make printer association in factory
    @brand = create(:garment_price, style_number: 2000, printer_id: @printer) # _refactor - Make printer association in factory
    @boutique = create(:garment_price, printer_id: @printer)
  end

  it 'provides a list of garment options to choose from' do
    selection = GarmentSelector.create(short_sleeve_tshirt: @budget, printer_id: @printer, garment_price: 4500)
    expect(selection).to be_valid
  end

  describe 'creating a price' do
    it 'should create a price after the garment is selected' do
      selection = GarmentSelector.new(short_sleeve_tshirt: @budget, printer_id: @printer)
      # selection.should_receive(:add_price) # _question - how do I test callbacks?
      expect(selection).to be_valid
    end
  end
end
