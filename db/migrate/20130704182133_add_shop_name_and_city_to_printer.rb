class AddShopNameAndCityToPrinter < ActiveRecord::Migration
  def change
    add_column :printers, :shop_name, :string
    add_column :printers, :city_id, :integer
  end
end
