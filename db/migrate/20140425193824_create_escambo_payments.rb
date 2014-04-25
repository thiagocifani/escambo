class CreateEscamboPayments < ActiveRecord::Migration
  def change
    create_table :escambo_payments do |t|
      t.decimal :amount
      t.references :order, index: true
      t.integer :payment_type_id

      t.timestamps
    end
  end
end
