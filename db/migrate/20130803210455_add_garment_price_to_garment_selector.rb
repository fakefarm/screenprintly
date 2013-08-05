class AddGarmentPriceToGarmentSelector < ActiveRecord::Migration
  def change
    add_column :garment_selectors, :garment_price, :string
  end
end
