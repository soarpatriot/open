class RemoveUserIdFromCredentials < ActiveRecord::Migration
  def change
    remove_column :credentials, :user_id, :integer
  end
end
