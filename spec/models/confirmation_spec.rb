require 'spec_helper'

describe Confirmation do
  describe 'submitting a quote to printer' do
    it 'keeps all the important content together' do
      printer = create(:printer)
      confirmation = Confirmation.new(color: "5 colors", garment: "boutique", printer_id: printer, city: printer.city , total_invoice: "12345", piece_price: "124" )
      expect(confirmation).to be_valid
    end
  end
end
