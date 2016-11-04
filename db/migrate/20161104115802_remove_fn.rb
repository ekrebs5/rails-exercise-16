class RemoveFn < ActiveRecord::Migration
  def change
    remove_column :authors, :first_name
  end
end
