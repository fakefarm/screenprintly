class AddSlugToPrinte < ActiveRecord::Migration
  def change
    add_column :printers, :slug, :string
    add_index :printers, :slug
  end
end
