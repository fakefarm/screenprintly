class AddAttributesToGarmentPrice < ActiveRecord::Migration
  def change
    add_column :garment_prices, :fabric, :string
    add_column :garment_prices, :cut, :string
    add_column :garment_prices, :quality, :string
    add_column :garment_prices, :colors, :string
    add_column :garment_prices, :inventory, :string
    add_column :garment_prices, :brand, :string
    add_column :garment_prices, :style_number, :string
    add_column :garment_prices, :price, :integer
    add_column :garment_prices, :printer_id, :integer
    add_index  :garment_prices, :printer_id
  end
end
