class ChangeSessionIdInSession < ActiveRecord::Migration
  def change
    change_column :sessions, :session_id, :string
  end
end
