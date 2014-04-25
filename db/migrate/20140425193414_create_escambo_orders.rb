class CreateEscamboOrders < ActiveRecord::Migration
  def change
    create_table :escambo_orders do |t|
      t.decimal :amount
      t.decimal :discount
      t.decimal :total_amount

      t.timestamps
    end
  end
end
