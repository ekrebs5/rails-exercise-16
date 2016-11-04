class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :lastName
      t.string :homepage

      t.timestamps null: false

    end
  end
end
