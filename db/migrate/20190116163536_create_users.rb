class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :login
      t.string :full_name
      t.references :role, foreign_key: true
      t.string :password_digest

      t.timestamps
    end
  end
end
