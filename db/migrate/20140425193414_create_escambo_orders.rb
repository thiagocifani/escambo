class CreateEscamboOrders < ActiveRecord::Migration
  def change
    create_table :escambo_orders do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.decimal :discount, precision: 10, scale: 2
      t.decimal :total_amount, precision: 10, scale: 2
      t.integer :user_id

      t.timestamps
    end
  end
end
