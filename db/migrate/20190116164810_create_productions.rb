class CreateProductions < ActiveRecord::Migration[5.2]
  def change
    create_table :productions do |t|
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
