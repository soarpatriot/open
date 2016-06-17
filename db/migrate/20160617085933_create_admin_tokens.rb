class CreateAdminTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :access_token
      t.string :refresh_token
      t.string :expired_at
      t.string :datatime

      t.timestamps null: false
    end
  end
end
