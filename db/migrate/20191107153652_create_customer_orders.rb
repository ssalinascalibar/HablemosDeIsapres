class CreateCustomerOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_orders do |t|
      t.references :customer, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :payed, default: false

      t.timestamps
    end
  end
end
