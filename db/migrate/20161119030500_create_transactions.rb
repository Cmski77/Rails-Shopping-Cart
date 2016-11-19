class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :product_id
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
