class CreateEscamboCategories < ActiveRecord::Migration
  def change
    create_table :escambo_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
