class AddPriceTierToPrintPrice < ActiveRecord::Migration
  def change
    add_column :print_prices, :price_tier, :string
    remove_column :print_prices, :min_print_qty
    remove_column :print_prices, :max_print_qty
  end
end
