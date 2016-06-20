class AddKeyIdToTokens < ActiveRecord::Migration
  def change
    add_column :tokens, :key_id, :integer
  end
end
