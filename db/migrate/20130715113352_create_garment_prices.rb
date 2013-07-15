class CreateGarmentPrices < ActiveRecord::Migration
  def change
    create_table :garment_prices do |t|

      t.timestamps
    end
  end
end
