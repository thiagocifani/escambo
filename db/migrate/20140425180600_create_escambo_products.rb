class CreateEscamboProducts < ActiveRecord::Migration
  def change
    create_table :escambo_products do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
