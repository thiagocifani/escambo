class CreateEscamboProducts < ActiveRecord::Migration
  def change
    create_table :escambo_products do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
