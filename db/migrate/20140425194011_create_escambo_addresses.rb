class CreateEscamboAddresses < ActiveRecord::Migration
  def change
    create_table :escambo_addresses do |t|
      t.string :street_address
      t.string :number
      t.string :complement
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone_number
      t.integer :user_id

      t.timestamps
    end
  end
end
