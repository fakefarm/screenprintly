class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :quanity
      t.integer :number_of_colors

      t.timestamps
    end
  end
end
