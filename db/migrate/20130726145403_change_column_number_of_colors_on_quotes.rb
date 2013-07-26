class ChangeColumnNumberOfColorsOnQuotes < ActiveRecord::Migration
  def change
    change_column :quotes, :number_of_colors, :string
  end
end
