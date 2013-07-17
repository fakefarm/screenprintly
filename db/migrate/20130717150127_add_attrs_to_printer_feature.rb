class AddAttrsToPrinterFeature < ActiveRecord::Migration
  def change
    add_column :printer_features, :free_shipping, :boolean
    add_column :printer_features, :digital_proof, :boolean
    add_column :printer_features, :hotline, :boolean
    add_column :printer_features, :art_team, :boolean
    add_column :printer_features, :sample, :boolean
    add_column :printer_features, :drop_ship, :boolean
    add_column :printer_features, :printer_id, :integer
    add_index  :printer_features, :printer_id
  end
end
