class AddPriceToEscamboProducts < ActiveRecord::Migration
  def change
    add_column :escambo_products, :price,  :decimal, precision: 10, scale: 2
  end
end
