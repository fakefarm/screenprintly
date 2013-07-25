class RenameColumnOnQuotes < ActiveRecord::Migration
  def change
    rename_column :quotes, :quanity, :quantity
  end
end
