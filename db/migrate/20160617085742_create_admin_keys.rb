class CreateAdminKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.string :client_id
      t.string :client_secret

      t.timestamps null: false
    end
  end
end
