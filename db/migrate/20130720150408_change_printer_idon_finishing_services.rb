class ChangePrinterIdonFinishingServices < ActiveRecord::Migration
  def change
    change_column :finishing_services, :printer_id, :integer
  end
end
