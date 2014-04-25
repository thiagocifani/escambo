class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :categories_products, id: false do |t|
      t.integer :product_id
      t.integer :categories_id
    end
  end
end
