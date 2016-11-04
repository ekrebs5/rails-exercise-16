class RemoveLn < ActiveRecord::Migration
  def change
    remove_column :authors, :lastName
  end
end
