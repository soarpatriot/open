class ChangeToken < ActiveRecord::Migration
  def change
    remove_column :tokens, :datatime
    change_column :tokens, :expired_at, :datetime
  end
end
