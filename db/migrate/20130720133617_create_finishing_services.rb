class CreateFinishingServices < ActiveRecord::Migration
  def change
    create_table :finishing_services do |t|

      t.timestamps
    end
  end
end
