class CreateEscamboOrderItems < ActiveRecord::Migration
  def change
    create_table :escambo_order_items do |t|
      t.references :product, index: true
      t.decimal :price
      t.integer :quantity
      t.references :order, index: true

      t.timestamps
    end
  end
end
