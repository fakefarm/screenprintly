class AddProfileInfoToPrinters < ActiveRecord::Migration
  def change
    add_column :printers, :about, :text
    add_column :printers, :overview, :text
    add_column :printers, :services, :text
    add_column :printers, :customer_service, :text
    add_column :printers, :terms, :text
  end
end



