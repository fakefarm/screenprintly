class AddColumnToGarmentSelector < ActiveRecord::Migration
  def change
    add_column :garment_selectors, :comment, :text
  end
end
