class CreateGarmentSelectors < ActiveRecord::Migration
  def change
    create_table :garment_selectors do |t|
      t.string :short_sleeve_tshirt
      t.integer :printer_id

      t.timestamps
    end

     add_index :garment_selectors, :printer_id
  end
end
