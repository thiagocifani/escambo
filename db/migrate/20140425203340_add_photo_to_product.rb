class AddPhotoToProduct < ActiveRecord::Migration
  def change
    add_attachment :escambo_products, :photo
  end
end
