class RenameKeyIdToCredentialId < ActiveRecord::Migration
  def change
    rename_column :tokens, :key_id, :credential_id
  end
end
