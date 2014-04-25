class CreateEscamboPaymentTypes < ActiveRecord::Migration
  def change
    create_table :escambo_payment_types do |t|
      t.string :name
      t.string :token
      t.string :email
      t.string :key

      t.timestamps
    end
  end
end
