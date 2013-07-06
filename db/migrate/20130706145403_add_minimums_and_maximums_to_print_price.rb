class AddMinimumsAndMaximumsToPrintPrice < ActiveRecord::Migration
  def change
    add_column :print_prices, :min_print_qty, :integer
    add_column :print_prices, :max_print_qty, :integer
  end
end
