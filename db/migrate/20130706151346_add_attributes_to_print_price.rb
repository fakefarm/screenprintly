class AddAttributesToPrintPrice < ActiveRecord::Migration
  def change
    add_column :print_prices, :pallet_type, :string
    add_column :print_prices, :ink_type, :string
    add_column :print_prices, :base_color, :integer
    add_column :print_prices, :one_color, :integer
    add_column :print_prices, :two_color, :integer
    add_column :print_prices, :three_color, :integer
    add_column :print_prices, :four_color, :integer
    add_column :print_prices, :five_color, :integer
    add_column :print_prices, :six_color, :integer
    add_column :print_prices, :seven_color, :integer
    add_column :print_prices, :eight_color, :integer
  end
end
