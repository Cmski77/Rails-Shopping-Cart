class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :name
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end