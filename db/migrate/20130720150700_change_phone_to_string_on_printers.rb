class ChangePhoneToStringOnPrinters < ActiveRecord::Migration
  def change
    change_column :printers, :phone, :string
  end
end
