class AddAttrsToFinishingService < ActiveRecord::Migration
  def change
    add_column :finishing_services, :printed_labels, :boolean
    add_column :finishing_services, :woven_labels, :boolean
    add_column :finishing_services, :folding_bagging, :boolean
    add_column :finishing_services, :hang_tags, :boolean
    add_column :finishing_services, :fulfillment, :boolean
    add_column :finishing_services, :printer_id, :string
    add_index  :finishing_services, :printer_id
  end
end
