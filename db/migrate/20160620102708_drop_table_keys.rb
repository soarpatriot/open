class DropTableKeys < ActiveRecord::Migration
  def change
    drop_table :keys
  end
end
