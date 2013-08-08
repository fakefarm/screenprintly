class AddColumnsToConfirmations < ActiveRecord::Migration
  def change
    add_column :confirmations, :color, :string
    add_column :confirmations, :garment, :string
    add_column :confirmations, :printer_id, :integer
    add_column :confirmations, :city, :string
    add_column :confirmations, :total_invoice, :integer
    add_column :confirmations, :piece_price, :integer
  end
end
