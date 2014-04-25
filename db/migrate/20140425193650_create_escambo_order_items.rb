class CreateEscamboOrderItems < ActiveRecord::Migration
  def change
    create_table :escambo_order_items do |t|
      t.references :product, index: true
      t.decimal :price, precision: 10, scale: 2
      t.integer :quantity
      t.references :order, index: true

      t.timestamps
    end
  end
end
