class AddGrantTypeToKeys < ActiveRecord::Migration
  def change
    add_column :keys, :grant_type, :string
  end
end
