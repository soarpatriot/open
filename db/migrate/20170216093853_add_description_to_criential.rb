class AddDescriptionToCriential < ActiveRecord::Migration
  def change
    add_column :credentials, :description, :string
  end
end
