class AddPendingToPrinter < ActiveRecord::Migration
  def change
    add_column :printers, :pending, :boolean
  end
end
