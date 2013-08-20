class AddNameAndEmailToConfirmation < ActiveRecord::Migration
  def change
    add_column :confirmations, :name, :string
    add_column :confirmations, :email, :string
  end
end
