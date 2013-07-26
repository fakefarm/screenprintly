class ChangePriceTierOnPrintPrices < ActiveRecord::Migration
  def change
    change_column :print_prices, :price_tier, :integer
  end
end
