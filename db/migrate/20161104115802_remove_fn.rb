class RemoveFn < ActiveRecord::Migration
  def change
    remove_column :authors, :firstName
  end
end
