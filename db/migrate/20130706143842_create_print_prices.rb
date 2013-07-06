class CreatePrintPrices < ActiveRecord::Migration
  def change
    create_table :print_prices do |t|

      t.timestamps
    end
  end
end
