class AddAttrsToPrinter < ActiveRecord::Migration
  def change
    add_column :printers, :contact_name, :string
    add_column :printers, :phone, :integer
    add_column :printers, :address, :string
    add_column :printers, :zipcode, :integer
  end
end
