class AddAttributesToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :session_id,    :integer
    add_column :sessions, :quote_id,      :integer
    add_column :sessions, :garment_id,    :integer
    add_column :sessions, :printer_id,    :integer
    add_column :sessions, :garment_price, :integer
  end
end
