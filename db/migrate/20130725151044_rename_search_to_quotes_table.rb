class RenameSearchToQuotesTable < ActiveRecord::Migration
  def change
    rename_table :searches, :quotes
  end
end
