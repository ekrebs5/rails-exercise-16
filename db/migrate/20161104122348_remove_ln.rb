class RemoveLn < ActiveRecord::Migration
  def change
    remove_column :authors, :last_name
  end
end
