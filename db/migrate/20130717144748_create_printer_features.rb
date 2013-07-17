class CreatePrinterFeatures < ActiveRecord::Migration
  def change
    create_table :printer_features do |t|

      t.timestamps
    end
  end
end
