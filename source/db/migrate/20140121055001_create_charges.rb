class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.decimal :amount
      t.boolean :paid
      t.boolean :refunded
      t.integer :customer_id

      t.timestamps
    end
  end
end
