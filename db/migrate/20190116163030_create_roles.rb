class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :title
      t.boolean :create_user
      t.boolean :edit_user
      t.boolean :delete_user

      t.timestamps
    end
  end
end
