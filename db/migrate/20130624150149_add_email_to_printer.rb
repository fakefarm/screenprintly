class AddEmailToPrinter < ActiveRecord::Migration
  def change
    add_column :printers, :email, :string
  end
end
