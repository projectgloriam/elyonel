class CreateProfits < ActiveRecord::Migration[5.2]
  def change
    create_table :profits do |t|
      t.float :total
      t.float :expenses

      t.timestamps
    end
  end
end
