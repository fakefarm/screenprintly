class AddWebsiteToPrinter < ActiveRecord::Migration
  def change
    add_column :printers, :website, :string
  end
end
