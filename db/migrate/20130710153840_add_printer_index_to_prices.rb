class AddPrinterIndexToPrices < ActiveRecord::Migration
  def change
    add_column :print_prices, :printer_id, :integer
    add_index :print_prices, :printer_id
  end
end
